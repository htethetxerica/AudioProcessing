cmake_minimum_required(VERSION 3.10)
project(AudioProcessing)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)

# Add PortAudio
add_subdirectory(C:/Projects/portaudio build_portaudio)
include_directories(C:/Projects/portaudio/include)

# Add libsndfile
add_subdirectory(C:/Projects/libsndfile build_libsndfile)
include_directories(C:/Projects/libsndfile/include)

# Add your executable and link the libraries
add_executable(AudioProcessing AudioProcessing.cpp)
target_link_libraries(AudioProcessing PRIVATE portaudio sndfile)
