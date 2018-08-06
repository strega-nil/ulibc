add_library(ulibc-start crt.s)

target_link_libraries(ulibc-start
  PUBLIC
    -nostdlib
    -nodefaultlibs)

