# smu version
VERSION = 1.5

include ../global.mk

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/man

# includes and libs
INCS = -I. -I${PREFIX}/include
LIBS = -L${PREFIX}/lib

# flags
CFLAGS = -g -O0 -Wall -Werror -ansi ${INCS} -DVERSION=\"${VERSION}\"
#CFLAGS = -fprofile-arcs -ftest-coverage -pg -g -O0 -Wall -Werror -ansi ${INCS} -DVERSION=\"${VERSION}\"
#CFLAGS = -Os -Wall -Werror -ansi ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = -fprofile-arcs -ftest-coverage -pg ${LIBS}
LDFLAGS = ${LIBS}

# compiler
CC = cc
