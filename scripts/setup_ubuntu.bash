#!/bin/bash -eu

scripts=$(cd "$(dirname $0)/.."; pwd)

sudo apt-add-reposotory -y ppa:ubuntu-toolchain-r/test

packages="build-essential clang cmake git python-dev python3-dev tmux gcc-7 g++-7"
packages="$packages dvipsk-ja gv latexmk pstoedit texlive texlive-fonts-extra texlive-fonts-recommended texlive-lang-cjk xdvik-ja"
packages="$packages inkscape indicator-cpufreq"

sudo apt update && sudo apt upgrade
sudo apt install -y $packages

sudo apt-add-repository -y ppa:numix/ppa
sudo apt update && sudo apt install -y numix-gtk-theme numix-icon-theme-circle unity-tweak-tool

