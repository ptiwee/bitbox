MK_ARCADE_JOYSTICK_RPI_VERSION = 954beae
MK_ARCADE_JOYSTICK_RPI_SITE = https://github.com/waveshare/mk_arcade_joystick_rpi
MK_ARCADE_JOYSTICK_RPI_SITE_METHOD = git

# Needed beacause can't pass cflags to cc
define MK_ARCADE_JOYSTICK_RPI_RPI2_HOOK
        $(SED) "s/#define PERI_BASE        0x20000000/#define PERI_BASE        0x3F000000/g" $(@D)/mk_arcade_joystick_rpi.c
		$(SED) "s/  21/3/g" $(@D)/mk_arcade_joystick_rpi.c
endef

MK_ARCADE_JOYSTICK_RPI_PRE_CONFIGURE_HOOKS += MK_ARCADE_JOYSTICK_RPI_RPI2_HOOK

define MK_ARCADE_JOYSTICK_RPI_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL)/package/mk_arcade_joystick_rpi/S30joystick \
		$(TARGET_DIR)/etc/init.d/S30joystick
endef

$(eval $(kernel-module))
$(eval $(generic-package))
