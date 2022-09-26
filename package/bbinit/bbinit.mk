define BBINIT_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL)/package/bbinit/S40bbinit \
		$(TARGET_DIR)/etc/init.d/S40bbinit
endef

$(eval $(generic-package))
