# AERA Recovery device tree for the Redmi Pad Pro 5G / POCO Pad 5G (ruan)

Works: display, touch, adb, battery. Decryption is being tested, so don't rely on
its backups yet.

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
