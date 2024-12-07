include $(TOPDIR)/rules.mk

PKG_NAME:=ricoh_sp150
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_FIXUP:=autoreconf
# PKG_BUILD_DEPENDS:=libcups

include $(INCLUDE_DIR)/package.mk

define Package/ricoh_sp150
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Printing
	DEPENDS:=+libcups +libjbig
	TITLE:=OpenPrinting Ricoh SP 150 CUPS filter
	URL:=http://www.openprinting.org
endef

define Package/ricoh_sp150/description
 CUPS filters for Ricoh SP150
endef

define Package/ricoh_sp150/install
	$(INSTALL_DIR) $(1)/opt/etc/cups/ppd
	$(INSTALL_BIN) ./files/*.ppd $(1)/opt/etc/cups/ppd
	$(INSTALL_DIR) $(1)/opt/lib/filter
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/rastertoricohsp150su $(1)/opt/lib/filter
endef

$(eval $(call BuildPackage,ricoh_sp150))
