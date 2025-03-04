cmake_minimum_required(VERSION 3.10)
project(AudioProcessing)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)

# Add PortAudio
add_subdirectory(portaudio)
include_directories(portaudio/include)

# Add libsndfile
add_subdirectory(libsndfile)
include_directories(libsndfile/include)

# Add your executable and link the libraries
add_executable(AudioProcessing AudioProcessing.cpp)
target_link_libraries(AudioProcessing PRIVATE portaudio sndfile)
