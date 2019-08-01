


mkdir -p build/install && push . && cd build
cmake -DSYSTEM_ROOT=$DEP_PROTOBUF_PATH -DCMAKE_INSTALL_PREFIX=install ../cmake
pop
