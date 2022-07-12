define BBSPLASH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL)/package/bbsplash/splash.png \
		$(TARGET_DIR)/opt/splash.png
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL)/package/bbsplash/S00splash \
		$(TARGET_DIR)/etc/init.d/S00splash
endef

$(eval $(generic-package))
