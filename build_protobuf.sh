PROTOBUF_WS=protobuf_workspace

mkdir $PROTOBUF_WS && cd $PROTOBUF_WS
git clone https://github.com/protocolbuffers/protobuf.git
cd protobuf && git submodule update --init --recursive
mkdir -p build/install && cd build
cmake -DCMAKE_INSTALL_PREFIX=install -DBUILD_SHARED_LIBS=1 ../cmake
make -j4 install 
ls -l install

