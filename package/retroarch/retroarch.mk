RETROARCH_VERSION = v1.10.0
RETROARCH_SITE = https://github.com/libretro/RetroArch.git
RETROARCH_SITE_METHOD = git
RETROARCH_DEPENDENCIES = host-pkgconf sdl2 alsa-lib

RETROARCH_CONFIGURE_OPTS += --disable-materialui --disable-xmb --disable-ozone
RETROARCH_CONFIGURE_OPTS += --enable-neon --enable-floathard --enable-dispmanx
LIBRETRO_PLATFORM += armv8,unix,rpi3,neon,hardfloat,gles

define RETROARCH_CONFIGURE_CMDS
	cd $(@D); \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CROSS_COMPILE=$(TARGET_CROSS) \
		PKG_CONF_PATH=pkg-config \
		./configure \
			--prefix=/usr \
			$(RETROARCH_CONFIGURE_OPTS)
endef

$(eval $(autotools-package))
