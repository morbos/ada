script_loc=`cd $(dirname $0) && pwd -P`

. $script_loc/common.sh

PATH=$NEW_PATH

cd $GNATCOLL_BINDINGS_SRC

binding="gmp iconv lzma omp python3 readline syslog zlib"

# Reduce from the full list because:
# o We can't do LZMA, because macOS doesn't support the multithreading
#   option and the GNATCOLL code doesn't make it optional.
# o There's a Python (probably 3.10) issue with omp, "Object of type
#   bytes is not JSON serializable."
binding="gmp iconv python3 readline syslog zlib"

for bnd in $binding; do
    (cd $bnd
     set -eu
     rm -f setup.json
#     find . -name \*.o | xargs rm
     $PYTHON ./setup.py clean
     case $bnd in
         readline)
             $PYTHON ./setup.py build --accept-gpl --reconfigure
             ;;
         *)
             $PYTHON ./setup.py build --reconfigure
             ;;
     esac
     $PYTHON ./setup.py install
    )
done
