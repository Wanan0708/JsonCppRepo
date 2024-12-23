# Install script for directory: F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/jsoncpp")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/json" TYPE FILE FILES
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/allocator.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/assertions.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/config.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/forwards.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/json.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/json_features.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/reader.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/value.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/version.h"
    "F:/Users/chd/Downloads/jsoncpp-master/jsoncpp-master/include/json/writer.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "E:/Project/VSProject/JsonCppLib/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
