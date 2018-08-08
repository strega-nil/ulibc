if (NOT CMAKE_SYSTEM_PROCESSOR)
  message(FATAL_ERROR "CMAKE_SYSTEM_PROCESSOR isn't set")

elseif (CMAKE_SYSTEM_PROCESSOR STREQUAL "x86")
  set(ulibc_arch_x86 1)
  set(ulibc_arch "x86")

elseif (CMAKE_SYSTEM_PROCESSOR MATCHES "^(x86_64|AMD64)$")
  set(ulibc_arch_x64 1)
  set(ulibc_arch "x64")

elseif (CMAKE_SYSTEM_PROCESSOR
    MATCHES "^armv7([fskl]|-a)?$")
  set(ulibc_arch_arm32 1)
  set(ulibc_arch "arm32")

elseif (CMAKE_SYSTEM_PROCESSOR STREQUAL "aarch64")
  set(ulibc_arch_arm64 1)
  set(ulibc_arch "arm64")

else()
  message(FATAL_ERROR
    "CMAKE_SYSTEM_PROCESSOR is set to something we don't understand: "
    "`${CMAKE_SYSTEM_PROCESSOR}`")

endif()

if (NOT CMAKE_SYSTEM_NAME)
  message(FATAL_ERROR "CMAKE_SYSTEM_NAME isn't set")

elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux")
  set(ulibc_os_linux 1)
  set(ulibc_os "linux")

elseif (CMAKE_SYSTEM_NAME STREQUAL "Windows")
  set(ulibc_os_windows 1)
  set(ulibc_os "windows")

elseif (CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  set(ulibc_os_macOS 1)
  set(ulibc_os "macOS")

elseif (CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
  set(ulibc_os_BSD 1)
  set(ulibc_os_freeBSD 1)
  set(ulibc_os "freeBSD")

elseif (CMAKE_SYSTEM_NAME STREQUAL "NetBSD")
  set(ulibc_os_BSD 1)
  set(ulibc_os_netBSD 1)
  set(ulibc_os "netBSD")

elseif (CMAKE_SYSTEM_NAME STREQUAL "OpenBSD")
  set(ulibc_os_BSD 1)
  set(ulibc_os_openBSD 1)
  set(ulibc_os "openBSD")

else()
  message(FATAL_ERROR
    "CMAKE_SYSTEM_NAME is set to something we don't understand: "
    "`${CMAKE_SYSTEM_NAME}`")

endif()
