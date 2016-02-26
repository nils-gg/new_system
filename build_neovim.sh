#/bin/bash
#Nils Gerstner 2015-09-29 13:16

# Install NeoVIM with YouCompleteMe

# LLVM: You may have use a different Pre-Built Binarie for your system from:
# http://llvm.org/releases/download.html
LLVM='http://llvm.org/releases/3.7.1/clang+llvm-3.7.1-x86_64-opensuse13.2.tar.xz' 
LLVM2='clang+llvm-3.7.1-x86_64-opensuse13.2'

# Install Build Prerequisite
#####sudo zypper install libtool autoconf automake cmake gcc-c++ python-pip python-greenlet python3-devel python-devel &

cd ~

# Clone the source for neovim
git clone https://github.com/neovim/neovim &

mkdir ycm_build
cd ycm_build

# Download and unpack LLVM library
aria2c -x4 $LLVM
tar xf *.tar.xz

wait
cd ..
cd neovim

# Build NeoVIM
make -j 6
sudo make install

cd ~

###### TODO
# Get .nvimrc 
# new Name and place!!!!!: .config/nvim/init.vim

# Install NeoBundle plugin manager for NeoVIM
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
###curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
###sudo chmod 740 install.sh
###install.sh

# Install NeoVIM plugins from ~/.vimrc
nvim +NeoBundleInstall +qall

# Install python2/3 NeoVIM support
sudo pip2 install neovim
sudo pip3 install neovim

cd ~
cd ycm_build

# Build YouCompleteMe C-library component
cmake -j 6 -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp 
cmake -j 6 -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_build/$LLVM2 . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make -j 6 ycm_support_libs

# Download Golang completion engine
go get -u github.com/nsf/gocode
cp -r ~/go/src/github.com/nsf/gocode/vim/*  ~/.vim

cd ..

# Cleanup
rm -rf ycm_build 
rm -rf neovim

