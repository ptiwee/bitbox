ATTRACTMODE_VERSION = v2.6.1
ATTRACTMODE_SITE = https://github.com/mickelson/attract.git
ATTRACTMODE_SITE_METHOD = git
ATTRACTMODE_DEPENDENCIES = ffmpeg sfml zlib

define ATTRACTMODE_BUILD_CMDS
	$(MAKE) \
		PKG_CONFIG=$(PKG_CONFIG_HOST_BINARY) \
		STRIP=$(TARGET_STRIP) \
		CXX=$(TARGET_CXX) \
		CC=$(TARGET_CC) \
		LD=$(TARGET_LD) \
		USE_GLES=1 GLES_LIB="$(shell $(PKG_CONFIG_HOST_BINARY) --libs brcmglesv2)" \
		-C $(@D) prefix=/usr
endef

define ATTRACTMODE_INSTALL_TARGET_CMDS
	$(MAKE) \
		PKG_CONFIG=$(PKG_CONFIG_HOST_BINARY) \
		LD="$(TARGET_LD)" \
		USE_GLES=1 \
		-C $(@D) prefix=$(TARGET_DIR)/usr install
endef

$(eval $(generic-package))
