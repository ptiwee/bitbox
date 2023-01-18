ATTRACT_BITBOX_LAYOUT_VERSION = 43e3544
ATTRACT_BITBOX_LAYOUT_SITE = https://github.com/ptiwee/attract-bitbox
ATTRACT_BITBOX_LAYOUT_SITE_METHOD = git

define ATTRACT_BITBOX_LAYOUT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -d $(TARGET_DIR)/usr/share/attract/layouts/BitBox
	cp -r $(@D)/* $(TARGET_DIR)/usr/share/attract/layouts/BitBox/
endef

$(eval $(generic-package))
