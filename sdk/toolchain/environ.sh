# KallistiOS environment variable settings
#
# This is a sample script. Configure to suit your setup. Some possible
# alternatives for the values below are included as an example.
#
# This script should be sourced in your current shell environment (probably
# by bashrc or something similar).
#

# Build architecture. Set the major architecture you'll be building for.
# The only option here is "dreamcast" as of KOS 2.0.0.
export KOS_ARCH="dreamcast"

# Build sub-architecture. If you need a particular sub-architecture, then set
# that here; otherwise use "pristine".
# Possible subarch options include:
#  "pristine" - a normal Dreamcast console or HKT-0120 devkit
#  "navi" - a Dreamcast with the navi mod applied to it
#  "naomi" - a NAOMI or NAOMI 2 arcade board
export KOS_SUBARCH="pristine"

# KOS main base path
export KOS_BASE="/usr/local/dc/kos/kos"
export KOS_PORTS="${KOS_BASE}/../kos-ports"

# Make utility
export KOS_MAKE="make"
#export KOS_MAKE="gmake"

# Load utility
export KOS_LOADER="dc-tool -x"				# dcload, preconfigured
# export KOS_LOADER="dc-tool-ser -t /dev/ttyS0 -x"	# dcload-serial

# Genromfs utility
export KOS_GENROMFS="${KOS_BASE}/utils/genromfs/genromfs"
#export KOS_GENROMFS="genromfs"

# Compiler prefixes
#export KOS_CC_BASE="/usr/local/dc/dc-elf"
#export KOS_CC_PREFIX="dc"
export KOS_CC_BASE="/opt/toolchains/dc/sh-elf"		# DC
export KOS_CC_PREFIX="sh-elf"

# If you are compiling for DC and have an ARM compiler, use these too.
# If you're using a newer compiler (GCC 4.7.0 and newer), you should probably be
# using arm-eabi as the target, rather than arm-elf. dc-chain now defaults to
# arm-eabi, so that's the default here.
#export DC_ARM_BASE="/usr/local/dc/arm-elf"
#export DC_ARM_PREFIX="arm-elf"
export DC_ARM_BASE="/opt/toolchains/dc/arm-eabi"
export DC_ARM_PREFIX="arm-eabi"

# Expand PATH (comment out if you don't want this done here)
export PATH="${PATH}:${KOS_CC_BASE}/bin:/opt/toolchains/dc/bin"

# reset some options because there's no reason for them to persist across
# multiple sourcing of this
export KOS_CFLAGS=""
export KOS_CPPFLAGS=""
export KOS_LDFLAGS=""
export KOS_AFLAGS=""

# Setup some default CFLAGS for compilation. The things that will go here
# are user specifyable, like optimization level and whether you want stack
# traces enabled. Some platforms may have optimization restrictions,
# please check README.
# GCC seems to have made -fomit-frame-pointer the default on many targets, so
# hence you may need -fno-omit-frame-pointer to actually have GCC spit out frame
# pointers. It won't hurt to have it in there either way.
export KOS_CFLAGS="-O2 -fomit-frame-pointer"
# export KOS_CFLAGS="-O2 -DFRAME_POINTERS -fno-omit-frame-pointer"

# Everything else is pretty much shared. If you want to configure compiler
# options or other such things, look at this file.
. ${KOS_BASE}/environ_base.sh
