set -eu

script_loc=`cd $(dirname $0) && pwd -P`

. $script_loc/common.sh

PATH=$PREFIX/bin:$PATH

$GDB_SRC/configure                              \
 --build=$BUILD                                 \
 --target=arm-eabi                              \
 --prefix=$PREFIX                               \
 --with-python=python3                          \
 --with-gmp=$PREFIX                             \
 --with-mpfr=$PREFIX                            \
 --without-zstd                                 \
 --disable-werror                               \
 CC=gcc                                         \
 CXX=g++

make -w all -j$CORES

cd gdb
make install
