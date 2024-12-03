mkdir build
cd build
cmake -DUSE_LLVM=ON \
      -DUSE_RPC=ON \
      -DUSE_SORT=ON \
      -DUSE_GRAPH_EXECUTOR=ON \
      ..
make -j 10
