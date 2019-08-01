PROTOBUF_WS=protobuf_workspace

#record
pwd

#work
mkdir $PROTOBUF_WS && push . && cd $PROTOBUF_WS
git clone https://github.com/protocolbuffers/protobuf.git
push . && cd protobuf && git submodule update --init --recursive
mkdir -p build/install && push . && cd build
cmake -DCMAKE_INSTALL_PREFIX=install -DBUILD_SHARED_LIBS=1 ../cmake
make -j4 install 
ls -l install
pop
pop
pop

#check
pwd

ls -l $PROTOBUF_WS/protobuf/build/install

#for building fdbus
DEP_PROTOBUF_PATH=$PROTOBUF_WS/protobuf/build/install

