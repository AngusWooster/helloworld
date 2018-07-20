# helloworld
OpenWRT-simple package

#It has to add a package folder and a Makefile under openwrt/package
#Makefile content :
################################################################################################
include $(TOPDIR)/rules.mk

PKG_NAME:=helloworld
PKG_VERSION:=8492d0c
PKG_SOURCE_URL:=https://github.com/AngusWooster/helloworld.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_RELEASE:=1.0

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/helloworld
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Helloworld Package!!
endef

define Package/helloworld/description
	It's my first package demo from Angus github.
endef

#define Build/Prepare
#	echo -e "\n\nHere is Package/Prepare\n\n"
#	mkdir -p $(PKG_BUILD_DIR)
#	$(CP) ./src/* $(PKG_BUILD_DIR)/
#endef

define Package/helloworld/install
	echo -e "\n\nHere is Package/install\n\n"
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello_world $(1)/usr/bin/
endef
$(eval $(call BuildPackage,$(PKG_NAME)))

################################################################################################


#build package
$make V=s

#It will generate package's ipk in bin/packages/arm_cortex-a53_neon-vfpv4/base

