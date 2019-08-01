PROTOBUF_WS=protobuf_workspace

#record
pwd
DEP_PROTOBUF_PATH=$(cd "$(dirname $0)";pwd)
echo $DEP_PROTOBUF_PATH

#work
mkdir $PROTOBUF_WS && cd $PROTOBUF_WS
git clone https://github.com/protocolbuffers/protobuf.git
cd protobuf && git submodule update --init --recursive
mkdir -p build/install && cd build
cmake -DCMAKE_INSTALL_PREFIX=install -DBUILD_SHARED_LIBS=1 ../cmake
make -j4 install 

cd $DEP_PROTOBUF_PATH

export PATH=$DEP_PROTOBUF_PATH/protobuf_workspace/protobuf/build/install/bin:PATH

echo build done

#check
pwd

# ls -l $PROTOBUF_WS/protobuf/build/install

#for building fdbus

# DEP_PROTOBUF_PATH=$PROTOBUF_WS/protobuf/build/install

