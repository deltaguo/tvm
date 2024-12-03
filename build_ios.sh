rm -rf build_ios
mkdir build_ios
cd build_ios
export DEVELOPER_DIR=/Applications/Xcode.app
cmake .. \
  -DCMAKE_SYSTEM_NAME=iOS \
  -DCMAKE_SYSTEM_VERSION=14.0 \
  -DCMAKE_OSX_SYSROOT=iphoneos \
  -DCMAKE_OSX_ARCHITECTURES=arm64 \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=14.0 \
  -DCMAKE_BUILD_WITH_INSTALL_NAME_DIR=ON \
  -DUSE_IOS_RPC=ON \
  -DUSE_METAL=ON

cmake --build . --target custom_dso_loader tvm_runtime
