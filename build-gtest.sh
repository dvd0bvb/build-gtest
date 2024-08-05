MSAN_CFLAGS="-fsanitize=memory -stdlib=libc++ -L/path/to/libcxx_msan/lib -lc++abi"

git clone https://github.com/google/googletest.git --branch main --depth 1
pushd googletest
mkdir build
cmake -B build \
    -DCMAKE_BUILD_TYPE=Release \
    -G "Unix Makefiles" \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
    -DCMAKE_CXX_FLAGS="$MSAN_CFLAGS" \
    -DCMAKE_C_FLAGS="$MSAN_CFLAGS"
cmake --build build