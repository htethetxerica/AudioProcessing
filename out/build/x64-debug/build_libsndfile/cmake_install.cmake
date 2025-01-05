# Install script for directory: C:/Projects/libsndfile

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-info.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-play.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-convert.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-cmp.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-metadata-set.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-metadata-get.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-interleave.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-deinterleave.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-concat.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile-salvage.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "C:/Projects/libsndfile/include/sndfile.h"
    "C:/Projects/libsndfile/include/sndfile.hh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake"
         "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets.cmake")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE RENAME "SndFileConfig.cmake" FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/SndFileConfig2.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/SndFileConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "C:/Projects/libsndfile/man/sndfile-info.1"
    "C:/Projects/libsndfile/man/sndfile-play.1"
    "C:/Projects/libsndfile/man/sndfile-convert.1"
    "C:/Projects/libsndfile/man/sndfile-cmp.1"
    "C:/Projects/libsndfile/man/sndfile-metadata-get.1"
    "C:/Projects/libsndfile/man/sndfile-concat.1"
    "C:/Projects/libsndfile/man/sndfile-interleave.1"
    "C:/Projects/libsndfile/man/sndfile-salvage.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-metadata-set.1" FILES "C:/Projects/libsndfile/man/sndfile-metadata-get.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-deinterleave.1" FILES "C:/Projects/libsndfile/man/sndfile-interleave.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libsndfile" TYPE FILE FILES
    "C:/Projects/libsndfile/docs/index.md"
    "C:/Projects/libsndfile/docs/libsndfile.jpg"
    "C:/Projects/libsndfile/docs/libsndfile.css"
    "C:/Projects/libsndfile/docs/print.css"
    "C:/Projects/libsndfile/docs/api.md"
    "C:/Projects/libsndfile/docs/command.md"
    "C:/Projects/libsndfile/docs/bugs.md"
    "C:/Projects/libsndfile/docs/formats.md"
    "C:/Projects/libsndfile/docs/sndfile_info.md"
    "C:/Projects/libsndfile/docs/new_file_type_howto.md"
    "C:/Projects/libsndfile/docs/win32.md"
    "C:/Projects/libsndfile/docs/FAQ.md"
    "C:/Projects/libsndfile/docs/lists.md"
    "C:/Projects/libsndfile/docs/embedded_files.md"
    "C:/Projects/libsndfile/docs/octave.md"
    "C:/Projects/libsndfile/docs/tutorial.md"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "D:/ACE Japan/HITACHI/AudioProcessing/out/build/x64-debug/build_libsndfile/sndfile.pc")
endif()

