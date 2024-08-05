# copy binaries and headers
mkdir -p gtest-with-msan/usr
mkdir -p gtest-with-msan/usr/include
mkdir -p gtest-with-msan/usr/lib

cp -r googletest/googlemock/include/gmock/* gtest-with-msan/usr/include/gmock/
cp -r googletest/googletest/include/gtest/* gtest-with-msan/usr/include/gtest
cp -r googletest/build/lib/* gtest-with-msan/usr/lib/

# build the package
dpkg-deb --build gtest-with-msan