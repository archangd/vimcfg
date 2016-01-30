# vimcfg
Personal Vim Configurations

## Prerequisites
llvm npm boost-c++ cmake clang python-dev

* Debian
```
wget https://nodejs.org/dist/latest/`wget \
	https://nodejs.org/dist/latest/SHASUMS256.txt \
	-qO- | awk '{print $2}' | grep linux-x64.*gz` \
	-O /tmp/node.tar.gz
cd /usr/local && tar --strip-components 1 -xzf /tmp/node.tar.gz
apt-get install libboost-all-dev cmake libclang-dev python-dev
npm install -g jshint
```
* OpenSUSE
```
wget https://nodejs.org/dist/latest/`wget \
	https://nodejs.org/dist/latest/SHASUMS256.txt \
	-qO- | awk '{print $2}' | grep linux-x64.*gz` \
	-O /tmp/node.tar.gz
cd /usr/local && tar --strip-components 1 -xzf /tmp/node.tar.gz
zypper in cmake boost-devel llvm-clang-devel python-devel
npm install -g jshint
```
## Installation
```
git clone https://github.com/archangd/vimcfg.git ~/.vim
./.vim/install.sh
```

## References
* http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
* http://oli.me.uk/2014/11/21/essential-vim-bundles-for-javascript-and-clojure/
