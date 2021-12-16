# These settings were set by the catalyst build script that automatically
# built this stage.
# Please consult /usr/share/portage/config/make.conf.example for a more
# detailed example.
COMMON_FLAGS="-march=native -O2 -pipe"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"
ACCEPT_LICENSE="*"
ACCEPT_KEYWORDS="~amd64"

# NOTE: This stage was built with the bindist Use flag enabled
PORTDIR="/var/db/repos/gentoo"
DISTDIR="/var/cache/distfiles"
PKGDIR="/var/cache/binpkgs"

# This sets the language of build output to English.
# Please keep this setting intact when reporting bugs.
LC_MESSAGES=C

GENTOO_MIRRORS="http://ftp.fi.muni.cz/pub/linux/gentoo/ http://mirror.dkm.cz/gentoo/ http://gentoo.mirror.web4u.cz/"
GRUB_PLATFORMS="efi-64"
INPUT_DEVICES="libinput synaptics"
VIDEO_CARDS="vmware"
USE="X xa libkms logind gtk3 postproc pulseaudio gtkmm abi_x86_32 haptic -gpm"
QEMU_SOFTMMU_TARGETS="x86_64 i386"
QEMU_USER_TARGETS="x86_64 i386"
