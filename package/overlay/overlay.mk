
OVERLAY_SITE_METHOD = local
OVERLAY_SITE = $(BR2_EXTERNAL_OVERLAY_PATH)/package/overlay/files

define OVERLAY_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(OVERLAY_PKGDIR)files/init/S41overlay $(TARGET_DIR)/etc/init.d/S41overlay
        mkdir $(TARGET_DIR)/etc/default
        echo "URL=\"tftp://10.0.6.2/{mac}/overlay.tar.gz\"" > $(TARGET_DIR)/etc/default/overlay
endef

$(eval $(generic-package))
