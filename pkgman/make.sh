#!/bin/sh

set -e

echo "Compiling PkgMan for UNIX"

INSTALL_DIR=$1/Programs/PkgMan
BUILD_DIR=$2/pkgman

mkdir -p $INSTALL_DIR
mkdir -p $BUILD_DIR

for sys_file in *.sys; do

    int_file=`echo $BUILD_DIR/$sys_file | sed s/\\.sys/\\.int/g`
    asm_file=`echo $BUILD_DIR/$sys_file | sed s/\\.sys/\\.int/g`
    obj_file=`echo $BUILD_DIR/$sys_file | sed s/\\.sys/\\.obj/g`

    SYSP.PRO -o $int_file $sys_file
    SYSC.PRO -o $asm_file $int_file
    SYSA.PRO -o $obj_file $asm_file

done

SYSL.PRO -o  $BUILD_DIR/*.obj
