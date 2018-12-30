# Installation Guide

Table of contents:

1. Introduction
2. How to install (for UNIX-based host)
3. How to install (for Windows-based host)
4. How to install (inside Micronix itself)

## Introduction 

The installation process of `Micronix` consists of three phases:

1. Installing the pre-requirements
2. Compiling the base tools needed for next phases
3. Compiling the system packages
4. Installing the system on a disk image

The following sections illustrate the setup process phase by phase.

### 1. Checking for pre-requirements

If you are running this program from any operating system
other than Micronix (like `UNIX`, `GNU`, `Windows`, etc.), You will
need the following packages:

- *unix shell*: UNIX shell is needed to run the phase 2 script.
- *gcc*/*clang*: An ANSI C compiler is needed to compile `systema`, 
                 the native compiler for `Micronix`.

If you are running this program from Micronix itself, then you don't
need `gcc`/`clang` at all. Instead of the C compiler, the following
requirements should be installed *by default* on Micronix

- *csys*:      a clone of the native compiler designed to run on UNIX
- *pkgman*:    package manager for Micronix
- *command*:   native scripting language for Micronix
- *fat-tools*: tools for FAT filesystem (for UEFI)
- *xxx-tools*: tools for the native filesystem of Micronix

### 2. Compiling the base tools needed for next phases

You only need this phase if (and only if) you are running the 
installation from any operating system other than Micronix.

The purpose of this phase is to prepare a Micronix-like
environment inside the host operating system. This can
be achieved by compiling the following components:

- *systema*
- *pkgman*
- *command*
- *fat-tools*
- *xxx-tools*

The programs are compiled for a native UNIX environment
instead of Micronix, and stored under base/ directory.

### 3. Compiling the system packages

If you are compiling the system from Micronix, you can
start from here. This steps compiles the whole
operating system and installs it under disk/ directory.

After this step is complete, the disk/ directory contains
a copy of how the system partition would really look like 
in the end.

### 4. Installing the system to hard disk

Now you can run disk/micronix/install to install the
system on a hard disk.

## How to install for UNIX-based host

1. Run the bootstrap script from the root directory:
```
    $ ./bootstrap.sh
```
   The script will check if UNIX requirements are all
   installed, then compile the base system to
   base/

2. Now build the system by running the build script.
   Because the build script is written for Micronix,
   you will need to use the native command interpreter
   for Micronix. On UNIX, you can do the following:
```
    $ PATH=`pwd`/base/ command build.com
```

3. Finally, you can install the system from disk/
   directory:
```
    $ PATH=`pwd`/base/ command install.com
```

## How to install for Windows-based host

Windows is currently not supported at the moment

## How to install inside Micronix itself

1. Build the system by executing the build command
```
    > BUILD
```

2. Install the system by executing the installer
   from the disk\
```
    > INSTALL
```
