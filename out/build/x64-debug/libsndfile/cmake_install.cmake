# Install script for directory: D:/ACE Japan/HITACHI/AudioProcessing/libsndfile

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/ACE Japan/HITACHI/AudioProcessing/out/install/x64-debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-info.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-play.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-convert.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-cmp.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-metadata-set.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-metadata-get.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-interleave.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-deinterleave.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-concat.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile-salvage.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/include/sndfile.h"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/include/sndfile.hh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake"
         "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE RENAME "SndFileConfig.cmake" FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/SndFileConfig2.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/SndFileConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-info.1"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-play.1"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-convert.1"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-cmp.1"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-metadata-get.1"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-concat.1"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-interleave.1"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-salvage.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-metadata-set.1" FILES "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-metadata-get.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-deinterleave.1" FILES "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/man/sndfile-interleave.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libsndfile" TYPE FILE FILES
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/index.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/libsndfile.jpg"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/libsndfile.css"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/print.css"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/api.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/command.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/bugs.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/formats.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/sndfile_info.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/new_file_type_howto.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/win32.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/FAQ.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/lists.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/embedded_files.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/octave.md"
    "D:/ACE Japan/HITACHI/AudioProcessing/libsndfile/docs/tutorial.md"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/libsndfile/sndfile.pc")
endif()

