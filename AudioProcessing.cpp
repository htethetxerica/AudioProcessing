#include <portaudio.h>
#include <sndfile.h>
#include <iostream>

using namespace std;

// Audio processing callback
static int audioCallback(const void* inputBuffer, void* outputBuffer,
    unsigned long framesPerBuffer, const PaStreamCallbackTimeInfo * timeInfo,
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

int main() {
    // Initialize PortAudio
    PaError err = Pa_Initialize();
    if (err != paNoError) {
        cout << "PortAudio initialization failed: " << Pa_GetErrorText(err) << endl;
        system("pause");
        return 1;
    }
    std::cout << "PortAudio initialized successfully." << sf_strerror(NULL) << std::endl;

    // Open an audio file using libsndfile
    SF_INFO sfinfo;
    SNDFILE* sf = sf_open("D:/ACE Japan/HITACHI/AudioProcessing/BAK.wav", SFM_READ, &sfinfo);
    if (!sf) {
        cout << "Failed to open audio file." << sf_strerror(NULL) << endl;
        system("pause");
        Pa_Terminate();
        return 1;
    }

    // Set up PortAudio stream parameters based on audio file format
    PaStreamParameters outputParams;
    outputParams.device = Pa_GetDefaultOutputDevice();
    if (outputParams.device == paNoDevice) {
        cerr << "No default output device." << endl;
        sf_close(sf);
        Pa_Terminate();
        return 1;
    }

    outputParams.channelCount = sfinfo.channels;
    outputParams.sampleFormat = paInt16; // Match to `sf_read_short`
    outputParams.suggestedLatency = Pa_GetDeviceInfo(outputParams.device)->defaultLowOutputLatency;
    outputParams.hostApiSpecificStreamInfo = NULL;

    // Open PortAudio stream
    PaStream* stream;
    err = Pa_OpenStream(&stream, NULL, &outputParams, sfinfo.samplerate,
        paFramesPerBufferUnspecified, paClipOff, audioCallback, sf);
    if (err != paNoError) {
        cerr << "Failed to open PortAudio stream: " << Pa_GetErrorText(err) << endl;
        sf_close(sf);
        Pa_Terminate();
        return 1;
    }

    // Start stream
    err = Pa_StartStream(stream);
    if (err != paNoError) {
        cerr << "Failed to start stream: " << Pa_GetErrorText(err) << endl;
        Pa_CloseStream(stream);
        sf_close(sf);
        Pa_Terminate();
        return 1;
    }

    cout << "Playback started. Press Enter to stop..." << endl;
    system("pause");
    cin.get();

    // Stop and cleanup
    err = Pa_StopStream(stream);
    if (err != paNoError) cerr << "Failed to stop stream: " << Pa_GetErrorText(err) << endl;

    Pa_CloseStream(stream);
    sf_close(sf);
    Pa_Terminate();
    std::cout << "PortAudio terminated successfully." << std::endl;
    system("pause");

    std::cout << "Playback finished." << std::endl;
    system("pause");
    return 0;
}
