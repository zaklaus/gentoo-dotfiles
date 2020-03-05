# farbfeld version
VERSION = 4

include ../global.mk

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/man

# flags
CPPFLAGS = -D_DEFAULT_SOURCE
CFLAGS   += -std=c99 -pedantic -Wall -Wextra -Os -I${PREFIX}/include
LDFLAGS  = -s -L${PREFIX}/lib
PNG-LDLIBS = -lpng
JPG-LDLIBS = -ljpeg

# compiler and linker
CC = cc
