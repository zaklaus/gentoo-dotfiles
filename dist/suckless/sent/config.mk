# sent version
VERSION = 1

include ../global.mk

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/man

X11INC = ${PREFIX}/include
X11LIB = ${PREFIX}/lib

# includes and libs
INCS = -I. -I${PREFIX}/include/cairo -I${PREFIX}/include -I${PREFIX}/include/freetype2 -I${X11INC}
LIBS = -L${PREFIX}/lib -lc -lm -L${X11LIB} -lcairo -lXft -lfontconfig -lX11

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_XOPEN_SOURCE=600
CFLAGS += -g -std=c99 -pedantic -Wall ${INCS} ${CPPFLAGS}
LDFLAGS += -g ${LIBS}
#CFLAGS += -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
#LDFLAGS += ${LIBS}

# compiler and linker
CC ?= cc
