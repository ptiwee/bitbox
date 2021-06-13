RPI_WS281X_VERSION = 7624b7828829497bfbbd6b13e7afd1f05593f7c6
RPI_WS281X_SITE = https://github.com/jgarff/rpi_ws281x.git
RPI_WS281X_SITE_METHOD = git
RPI_WS281X_INSTALL_STAGING = YES

$(eval $(cmake-package))
