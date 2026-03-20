# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/src/libvterm"
  "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/src/libvterm-build"
  "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix"
  "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/tmp"
  "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/src/libvterm-stamp"
  "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/src"
  "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/src/libvterm-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/src/libvterm-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/chris/.emacs.d/elpa/vterm-20251119.1653/build/libvterm-prefix/src/libvterm-stamp${cfgdir}") # cfgdir has leading slash
endif()
