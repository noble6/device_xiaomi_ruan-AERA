$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/xiaomi/ruan/device.mk)

PRODUCT_DEVICE := ruan
PRODUCT_NAME := twrp_ruan
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Pad Pro 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := ruan

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
