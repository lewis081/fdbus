echo build fbus
echo $DEP_PROTOBUF_PATH
pwd
DPP=protobuf_workspace/protobuf/build/install

mkdir -p build/install && pushd . && cd build
cmake -DSYSTEM_ROOT=$DPP -DCMAKE_INSTALL_PREFIX=install ../cmake
PATH=$DPP/bin:$PATH 
make

popd

echo build fbus done
