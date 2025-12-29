ZT_VERSION=1.16.0
wget https://github.com/zerotier/ZeroTierOne/archive/refs/tags/$ZT_VERSION.tar.gz
tar zxf $ZT_VERSION.tar.gz
cd ZeroTierOne-$ZT_VERSION
make -j`nproc` ZT_STATIC=1
strip zerotier-one
tar -czvf zerotier_$(uname -p)_$ZT_VERSION.tar.gz zerotier-one zerotier-cli
