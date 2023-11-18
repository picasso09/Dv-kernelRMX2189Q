export KBUILD_BUILD_USER="picasso"
export PATH="/root/Dv-kernelRMX2189Q/clang/bin:$PATH"
    make -j$(nproc --all) O=out ARCH=arm64 oppo6765_defconfig
    make -j$(nproc --all) ARCH=arm64 O=out \
                          CC=clang \
                          CROSS_COMPILE=aarch64-linux-gnu- \
                          CROSS_COMPILE_ARM32=arm-linux-gnueabi-
