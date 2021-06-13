RETROLEDS_VERSION = 1.0.0
RETROLEDS_SOURCE = retroleds.zip
RETROLEDS_SITE = http://reynalb.free.fr
RETROLEDS_DEPENDENCIES = host-pkgconf rpi-userland rpi_ws281x

define RETROLEDS_EXTRACT_CMDS
	$(UNZIP) $(RETROLEDS_DL_DIR)/$(RETROLEDS_SOURCE) -d $(@D)
endef

define RETROLEDS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define RETROLEDS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/retroleds $(TARGET_DIR)/usr/bin/retroleds
endef

$(eval $(generic-package))
