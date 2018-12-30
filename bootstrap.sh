#!/bin/sh

# Halt on error
set -x

# get script directory
TOPDIR=`dirname $0`

# make base/ directory to store unix executables
mkdir -p base/

# get installation directory path
export SYSDIR=`realpath base/`

# compile sysunix
cd $TOPDIR/sysunix; ./make.sh

# compile 
cd $TOPDIR/sysunix; ./make.sh

