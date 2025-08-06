#!/bin/bash
sudo apt install bc bison build-essential zstd clang flex gnupg gperf ccache libsdl1.2-dev libstdc++6 libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zlib1g-dev libncurses5-dev bzip2 git gcc g++ libssl-dev openssl -y gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf lld gcc-arm-linux-gnueabi llvm
mkdir -p ~/bin
echo $PATH
export PATH=~/bin:$PATH
source ~/.bashrc
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
repo init -u https://github.com/PlexOS-Project/android.git -b lineage-22.2 --git-lfs
repo sync
echo "Done."
