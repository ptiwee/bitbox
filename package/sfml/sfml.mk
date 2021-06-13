SFML_VERSION = R3
SFML_SITE = https://github.com/mickelson/sfml-pi.git
SFML_SITE_METHOD = git

SFML_INSTALL_STAGING = YES
SFML_DEPENDENCIES += eudev jpeg openal flac libvorbis freetype rpi-userland
SFML_CONF_OPTS += -DSFML_RPI=1

$(eval $(cmake-package))
