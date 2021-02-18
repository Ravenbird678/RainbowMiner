#!/usr/bin/env bash

PKG_MANAGER=$( command -v yum || command -v apt-get || command -v pacman)
if [ $PKG_MANAGER == 'pacman' ]
 then
   $PKG_MANAGER -S libc-ares2 --noconfirm
 else
   $PKG_MANAGER install libc-ares2 -y
fi
