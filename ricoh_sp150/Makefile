#
# Copyright (C) 2008-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ricoh-sp150-entware
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/frmax/ricoh_sp150su_cupsfiter.git
PKG_SOURCE_VERSION:=HEAD

PKG_FIXUP:=autoreconf

# PKG_CONFIG_DEPENDS:=\
# 	CONFIG_LTQ_DSL_ENABLE_SOAP \
# 	CONFIG_LTQ_DSL_ENABLE_DSL_EVENT_POLLING
#PKG_BUILD_DEPENDS:=ltq-adsl
# PKG_FLAGS:=nonshared

include $(INCLUDE_DIR)/package.mk

define Package/ricoh-sp150-entware
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libjbig
  TITLE:=Ricoh SP150 Entware CUPS
  URL:=http://support.ricoh.com/bb/html/dr_ut_e/re1/model/sp150/sp150.htm
endef

define Package/ricoh-sp150-entware/description
 Add Ricoh SP150 support for CUPS
endef

EXTRA_CFLAGS:=-I$(PKG_BUILD_DIR) \
	$(TARGET_LDFLAGS)

CONFIGURE_ARGS += \
	--prefix=/opt \
	--with-etcdir=/opt/etc 

define Package/ricoh-sp150-entware/install
	# $(INSTALL_DIR) $(1)/opt/bin $(1)/opt/sbin $(1)/opt/etc/init.d/ $(1)/opt/var/run
# 	$(INSTALL_BIN) ./files/S50atd $(1)/opt/etc/init.d
# 	$(INSTALL_BIN) $(PKG_BUILD_DIR)/at $(1)/opt/bin
# 	ln -sf at $(1)/opt/bin/atq
# 	ln -sf at $(1)/opt/bin/atrm
# 	$(INSTALL_BIN) $(PKG_BUILD_DIR)/atd $(1)/opt/sbin
# 	$(INSTALL_BIN) $(PKG_BUILD_DIR)/batch $(1)/opt/bin
endef

define Package/ricoh-sp150-entware/postinst
#!/bin/sh
endef

$(eval $(call BuildPackage,ricoh-sp150-entware))
