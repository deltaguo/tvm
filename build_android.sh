rm -rf build_android
mkdir build_android
cd build_android

cmake .. \
      -DTVM_HOME=/Users/guoyijie/android_project/GVoice/tvm \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_TOOLCHAIN_FILE=/Users/guoyijie/Library/Android/sdk/ndk/27.0.12077973/build/cmake/android.toolchain.cmake \
      -DCMAKE_INSTALL_PREFIX=. \
      -DCMAKE_CXX_FLAGS="-O3" \
      -DANDROID_ABI=arm64-v8a \
      -DANDROID_NATIVE_API_LEVEL=android-21 \
      -DANDROID_PLATFORM=android-21 \
      -DANDROID_STL=c++_static \
      -DUSE_HEXAGON_SDK=OFF \
      -DUSE_OPENCL=OFF

make tvm_runtime -j 10
