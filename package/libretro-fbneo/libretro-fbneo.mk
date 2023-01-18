LIBRETRO_FBNEO_VERSION = v1.0.0.02
LIBRETRO_FBNEO_SITE = https://github.com/libretro/fbneo
LIBRETRO_FBNEO_SITE_METHOD = git
LIBRETRO_FBNEO_DEPENDENCIES = retroarch

define LIBRETRO_FBNEO_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(TARGET_MAKE_ENV) $(MAKE) \
        -C $(@D)/src/burner/libretro -f Makefile platform="$(LIBRETRO_PLATFORM)"
endef

define LIBRETRO_FBNEO_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/src/burner/libretro/fbneo_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/fbneo_libretro.so
endef

$(eval $(generic-package))
