if (NOT CMAKE_SYSTEM_PROCESSOR)
  message(FATAL_ERROR "CMAKE_SYSTEM_PROCESSOR isn't set")
endif()

if (CMAKE_SYSTEM_PROCESSOR MATCHES "^x86$")
  message(FATAL_ERROR "x86 isn't yet supported")
endif()

if (CMAKE_SYSTEM_PROCESSOR MATCHES "^(x86_64|AMD64)$")
  add_subdirectory(x64)
endif()

if (CMAKE_SYSTEM_PROCESSOR
    MATCHES "^(armv7([fskl]|-a)?)")
  message(FATAL_ERROR "arm32 isn't yet supported")
endif()

if (CMAKE_SYSTEM_PROCESSOR MATCHES "^aarch64$")
  message(FATAL_ERROR "aarch64 isn't yet supported")
endif()
