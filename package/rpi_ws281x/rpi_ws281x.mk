RPI_WS281X_VERSION = f658e6067f3062e0cbc7fa72b09f679933f87d19
RPI_WS281X_SITE = https://github.com/jgarff/rpi_ws281x.git
RPI_WS281X_SITE_METHOD = git
RPI_WS281X_INSTALL_STAGING = YES

$(eval $(cmake-package))
