define BBINIT_INSTALL_TARGET_CMDS
	cp -r $(BR2_EXTERNAL)/package/bbinit/attract $(TARGET_DIR)/usr/share/
	cp -r $(BR2_EXTERNAL)/package/bbinit/retroarch $(TARGET_DIR)/usr/share/
endef

$(eval $(generic-package))
