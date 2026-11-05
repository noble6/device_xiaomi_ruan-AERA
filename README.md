# AERA Recovery device tree for the Redmi Pad Pro 5G / POCO Pad 5G (ruan)

Works: display, touch, battery, and decrypting a device with no lock screen credential.
Not checked yet: backup and restore, and a PIN or password. The OS version and patch
level in BoardConfig.mk must match the installed ROM for decryption.

```
repo init -u https://github.com/AERA-Recovery/android_manifest -b aera-16.0
repo sync -c -j8
git clone <this tree> device/xiaomi/ruan
. build/envsetup.sh
lunch twrp_ruan-bp2a-eng
mka recoveryimage
```

Test with `fastboot flash recovery out/target/product/ruan/recovery.img`; it only
touches the active slot's recovery partition.
