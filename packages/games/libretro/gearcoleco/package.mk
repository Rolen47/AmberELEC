################################################################################
#
#  Copyright (C) 2021-present AmberELEC (https://github.com/AmberELEC)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
################################################################################

PKG_NAME="gearcoleco"
PKG_VERSION="bb89079d3469cac81a1ce683d19ed396317ae99e"
PKG_SHA256="f3f4b1fb7d32030a4c11e335e7e6b224234dfe62e9d7747ab6dc6ce84710175f"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/drhelius/Gearcoleco"
PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Gearcoleco is a very accurate cross-platform ColecoVision emulator written in C++ that runs on Windows, macOS, Linux, BSD, Raspberry Pi and RetroArch."
PKG_TOOLCHAIN="make"

make_target() {
  make -C platforms/libretro/
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp platforms/libretro/gearcoleco_libretro.so ${INSTALL}/usr/lib/libretro/
}
