define BBCONFIGS_INSTALL_TARGET_CMDS
	cp -r $(BR2_EXTERNAL)/package/bbconfigs/attract $(TARGET_DIR)/usr/share/
	cp -r $(BR2_EXTERNAL)/package/bbconfigs/retroarch $(TARGET_DIR)/usr/share/
endef

$(eval $(generic-package))
