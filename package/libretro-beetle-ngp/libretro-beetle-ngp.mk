LIBRETRO_BEETLE_NGP_VERSION = 00c7cb8
LIBRETRO_BEETLE_NGP_SITE = https://github.com/libretro/beetle-ngp-libretro
LIBRETRO_BEETLE_NGP_SITE_METHOD = git
LIBRETRO_BEETLE_NGP_DEPENDENCIES = retroarch

define LIBRETRO_BEETLE_NGP_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(TARGET_MAKE_ENV) $(MAKE) \
        -C $(@D) platform="$(LIBRETRO_PLATFORM)"
endef

define LIBRETRO_BEETLE_NGP_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/mednafen_ngp_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/mednafen_ngp_libretro.so
endef

$(eval $(generic-package))
