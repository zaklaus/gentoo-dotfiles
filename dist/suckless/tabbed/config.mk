# tabbed version
VERSION = 0.6

include ../global.mk

# Customize below to fit your system

# paths
PREFIX = /usr
MANPREFIX = ${PREFIX}/man

X11INC = /usr/include
X11LIB = /usr/lib64

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2

# includes and libs
INCS = -I. -I/usr/include -I$(X11INC) -I${FREETYPEINC}
LIBS = -L/usr/lib64 -L${X11LIB} -lX11 ${FREETYPELIBS}

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_DEFAULT_SOURCE
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = -s ${LIBS}

# compiler and linker
CC = cc
