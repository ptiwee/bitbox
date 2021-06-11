LIBRETRO_PCSX_REARMED_VERSION = 31d1b18ba0408c684eaa63ce4be3b55d7e4b2aac
LIBRETRO_PCSX_REARMED_SITE = https://github.com/libretro/pcsx_rearmed
LIBRETRO_PCSX_REARMED_SITE_METHOD = git
LIBRETRO_PCSX_REARMED_DEPENDENCIES = retroarch

define LIBRETRO_PCSX_REARMED_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(TARGET_MAKE_ENV) $(MAKE) \
        -C $(@D) -f Makefile.libretro platform="$(LIBRETRO_PLATFORM)"
endef

define LIBRETRO_PCSX_REARMED_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/pcsx_rearmed_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/libretro_pcsx_rearmed.so
endef

$(eval $(generic-package))
