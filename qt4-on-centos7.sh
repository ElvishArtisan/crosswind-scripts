#!/bin/sh

# qt4-on-centos7.sh
#
# This configures build environement for compiling Windows binaries with Qt4
# on a CentOS 7 system.
#

#
# Enable EPEL
#
yum -y install epel-release

#
# Install Packages
#
yum -y install mingw32-crt mingw32-cpp mingw32-termcap mingw32-freetype mingw32-pixman mingw32-glib2 mingw32-libtiff mingw32-qt mingw32-postgresql mingw-filesystem-base mingw32-filesystem mingw32-pkg-config mingw32-winpthreads mingw32-headers mingw32-bzip2 mingw32-expat mingw32-binutils mingw32-libpng mingw32-openssl mingw32-fontconfig mingw32-gcc-c++ mingw32-libidn mingw32-cairo mingw32-libjpeg-turbo mingw32-sqlite mingw32-dbus mingw32-angleproject mingw32-icu mingw32-pcre mingw-binutils-generic mingw32-zlib mingw32-win-iconv mingw32-libffi mingw32-gcc mingw32-libssh2 mingw32-gettext mingw32-curl mingw32-qt-qmake mingw32-harfbuzz qt-devel

#
# Configure Environment
#
rm -f /etc/profile.d/mingw32-qt4.sh
echo "#!/bin/sh" > /etc/profile.d/mingw32-qt4.sh
echo "export MINGW_ROOT=/usr/i686-w64-mingw32/sys-root/mingw" >> /etc/profile.d/mingw32-qt4.sh
echo "export MINGW_RUNTIME=\$MINGW_ROOT/bin" >> /etc/profile.d/mingw32-qt4.sh >> /etc/profile.d/mingw32-qt4.sh
echo "export CXX=i686-w64-mingw32-c++" >> /etc/profile.d/mingw32-qt4.sh >> /etc/profile.d/mingw32-qt4.sh
echo "export PKG_CONFIG_PATH=\$MINGW_ROOT/lib/pkgconfig" >> /etc/profile.d/mingw32-qt4.sh

