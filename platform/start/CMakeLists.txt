if (ulibc_os_linux AND ulibc_arch_x64)
  add_subdirectory(linux-x64)

else()
  message(FATAL_ERROR
    "unsupported arch/OS combination: "
    "${ulibc_arch}/${ulibc_os}")
endif()
