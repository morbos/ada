set -eu

script_loc=`cd $(dirname $0) && pwd -P`

. $script_loc/common.sh

rm -rf *

$GCC_SRC/gmp/configure                          \
  --prefix=$PREFIX                              \
  --host=$BUILD                                 \
  --target=$BUILD                               \
  --build=$BUILD                                \
  --enable-cxx                                  \
  --disable-shared

make -w -j$CORES

make install
