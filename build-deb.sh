# copy binaries and headers
mkdir -p gtest-with-msan/usr
mkdir -p gtest-with-msan/usr/include
mkdir -p gtest-with-msan/usr/lib

cp -r googletest/build/include/* gtest-with-msan/usr/include/
cp -r googletest/build/lib/* gtest-with-msan/usr/lib/

# build the package
dpkg-deb --build gtest-with-msan