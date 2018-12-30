# Installation Guide

The installation process of `Micronix` consists of three phases:

1. Installing the pre-requirements
2. Compiling the system packages
3. Installing the system on a disk image
4. Simulation (optional)

The following sections illustrate the setup process phase by phase.

## 1. Installing the pre-requirements

If you are running this program from any operating system
other than Micronix (like `UNIX`, `GNU`, `Windows`, etc.), You will
need the following packages:

- *python*:  Because the installation scripts are written in python
- *systema*: The native compiler of Micronix (needs python)
- *mtools*:  MS-DOS filesystem manipulation tools (for UEFI)
- *gdisk*:   GPT partition editor

If you are running this program from Micronix itself, then you don't
need to worry about the prerequisites because they are installed
by default.

## 2. Compiling the system packages

If you are compiling the system from Micronix, you can
start from here. This step compiles the whole
operating system and installs it under disk/ directory.

Command to run:
- On UNIX: `$ ./build.py`
- On Micronix: `> BUILD`

After this step is complete, the disk/ directory now contains
a copy of how the system partition would really look like 
in the end.

### 3. Installing the system to hard disk

Now you can run the installer script to install the
system on a real hard disk or image for simulation.

Command to run:
- On UNIX: `$ ./install.py`
- On Micronix: `> INSTALL`

### 4. Simulation (optional)

On UNIX, you can run a simulation script to simulate 
the system:

Command to run:
- On UNIX: `$ ./qemu.py`
