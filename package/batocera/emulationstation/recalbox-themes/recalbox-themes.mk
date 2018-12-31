################################################################################
#
# RH Gamestation themes 
#
################################################################################

RECALBOX_THEMES_VERSION = master
RECALBOX_THEMES_SITE = $(call github,pmoran13800,rhgamestation-themes,$(RECALBOX_THEMES_VERSION))

define RECALBOX_THEMES_INSTALL_TARGET_CMDS
        mkdir -p $(TARGET_DIR)/recalbox/share_init/system/.emulationstation/themes/
	cp -r $(@D)/themes/RH_GAMESTATION \
		$(TARGET_DIR)/recalbox/share_init/system/.emulationstation/themes/
	cp -r $(@D)/themes/RH_CLASSIC \
		$(TARGET_DIR)/recalbox/share_init/system/.emulationstation/themes/
endef

$(eval $(generic-package))
