#include <portaudio.h>
#include <sndfile.h>
#include <iostream>
#include <filesystem>
#include <vector>

using namespace std;
namespace fs = std::filesystem;

// Audio processing callback
static int audioCallback(const void* inputBuffer, void* outputBuffer,
    unsigned long framesPerBuffer, const PaStreamCallbackTimeInfo* timeInfo,
    PaStreamCallbackFlags statusFlags, void* userData) {
    SNDFILE* sf = (SNDFILE*)userData;
    int16_t* out = (int16_t*)outputBuffer;

    // Read audio data from the file
    sf_count_t readCount = sf_read_short(sf, out, framesPerBuffer * 2); // Assuming 2 channels

    // Handle end of file (fill remaining frames with silence)
    if (readCount < framesPerBuffer * 2) {
        for (size_t i = readCount; i < framesPerBuffer * 2; i++) {
            out[i] = 0;
        }
        return paComplete; // Indicate end of playback
    }

    return paContinue;
}

void playAudioFile(const string& filePath) {
    SF_INFO sfinfo;
    SNDFILE* sf = sf_open(filePath.c_str(), SFM_READ, &sfinfo);
    if (!sf) {
        cerr << "Failed to open audio file: " << filePath << endl;
        return;
    }

    // Set up PortAudio stream parameters
    PaStreamParameters outputParams;
    outputParams.device = Pa_GetDefaultOutputDevice();
    if (outputParams.device == paNoDevice) {
        cerr << "No default output device." << endl;
        sf_close(sf);
        return;
    }

    outputParams.channelCount = sfinfo.channels;
    outputParams.sampleFormat = paInt16; // Match to `sf_read_short`
    outputParams.suggestedLatency = Pa_GetDeviceInfo(outputParams.device)->defaultLowOutputLatency;
    outputParams.hostApiSpecificStreamInfo = NULL;

    // Open PortAudio stream
    PaStream* stream;
    PaError err = Pa_OpenStream(&stream, NULL, &outputParams, sfinfo.samplerate,
        paFramesPerBufferUnspecified, paClipOff, audioCallback, sf);
    if (err != paNoError) {
        cerr << "Failed to open PortAudio stream: " << Pa_GetErrorText(err) << endl;
        sf_close(sf);
        return;
    }

    // Start playback
    err = Pa_StartStream(stream);
    if (err != paNoError) {
        cerr << "Failed to start stream: " << Pa_GetErrorText(err) << endl;
        Pa_CloseStream(stream);
        sf_close(sf);
        return;
    }

    cout << "Playing: " << filePath << endl;
    while (Pa_IsStreamActive(stream) == 1) {
        Pa_Sleep(100); // Wait for playback to complete
    }

    // Cleanup
    Pa_StopStream(stream);
    Pa_CloseStream(stream);
    sf_close(sf);
}

int main() {
    // Initialize PortAudio
    PaError err = Pa_Initialize();
    if (err != paNoError) {
        cerr << "PortAudio initialization failed: " << Pa_GetErrorText(err) << endl;
        return 1;
    }

    string folderPath = "D:/ACE Japan/HITACHI/AudioProcessing/AudioFolder";
    vector<string> audioFiles;

    // Read all .wav files from the folder
    for (const auto& entry : fs::directory_iterator(folderPath)) {
        if (entry.path().extension() == ".wav") {
            audioFiles.push_back(entry.path().string());
        }
    }

    if (audioFiles.empty()) {
        cerr << "No audio files found in the folder: " << folderPath << endl;
        Pa_Terminate();
        return 1;
    }

    // Play each file
    for (const auto& file : audioFiles) {
        playAudioFile(file);
    }

    // Terminate PortAudio
    Pa_Terminate();
    cout << "All files played successfully." << endl;
    return 0;
}
