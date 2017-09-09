PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.chip.vendor=brcm \
    qcom.bluetooth.soc=rome \
    ro.bt.bdaddr_path="/data/misc/bluetooth/bdaddr" \
    persist.service.avrcp.browsing=1

# Bluetooth
PRODUCT_PACKAGES += \
    hwaddrs

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf


PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
