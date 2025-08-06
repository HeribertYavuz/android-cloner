#!/bin/bash
mkdir -p ~/bin
echo $PATH
export PATH=~/bin:$PATH
source ~/.bashrc
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
repo init -u https://github.com/PlexOS-Project/android.git -b lineage-22.2 --git-lfs
repo sync
echo "Done."
