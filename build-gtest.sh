MSAN_CFLAGS="fsanitize=memory -fsanitize-memory-track-origins -fPIE -pie -fno-omit-frame-pointer -nostdinc++ -nostdlib++ -isystem /usr/include/libcxx-msan/c++/v1 -L /usr/lib/libcxx-msan -Wl,-rpath,/usr/lib/libcxx-msan -lc++"

git clone https://github.com/google/googletest.git --branch main --depth 1
pushd googletest
mkdir -p build
cmake -B build \
    -DCMAKE_BUILD_TYPE=Release \
    -G "Unix Makefiles" \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
    -DCMAKE_CXX_FLAGS="$MSAN_CFLAGS" \
    -DCMAKE_C_FLAGS="$MSAN_CFLAGS"
cmake --build build