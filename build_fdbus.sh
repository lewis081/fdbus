echo build fbus
echo $DEP_PROTOBUF_PATH
pwd
DPP=protobuf_workspace/protobuf/build/install
echo $PATH
export PATH=$PATH:`readlink -f $DPP/bin`
echo after export ----
echo $PATH

mkdir -p build/install && pushd . && cd build
cmake -DSYSTEM_ROOT=$DPP -DCMAKE_INSTALL_PREFIX=install ../cmake
make

popd

echo build fbus done
