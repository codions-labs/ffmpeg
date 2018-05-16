#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/ultravideo/kvazaar.git
cd kvazaar
./autogen.sh
./configure --enable-static --enable-pic
make -j$cpu_cnt
sudo make install
make distclean
sudo ldconfig
