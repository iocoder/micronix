#!/bin/sh

set -e

echo "Compiling Systema compiler for UNIX environment"

INSTALL_DIR=$1/Programs/Systema

mkdir -p $INSTALL_DIR

gcc *.c -o $INSTALL_DIR/SYSC.PRO

cp sysp $INSTALL_DIR/SYSP.PRO

cp sysa $INSTALL_DIR/SYSA.PRO

cp sysl $INSTALL_DIR/SYSL.PRO
