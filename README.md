# Embedded_Software_Firmware
## OTA FOR STM32H743 xxxx
### Method 1 (Visualization Window)
```
cd tools
sudo ./ota_gui
```
#### Notes: You can input `sudo chmod 777 ota_gui ota.out`, if report "cannot find xxx command"
### Method 2 (bash)
```
bash ota.sh bin_file_directory usb_port_directory
```
```
eg: bash ota.sh firmware/ACU_V1.0.1.bin /dev/test_arm_port
```
#### Notes: Before running the bash script, ensure that the USB port is properly bound, as it will be reconnected during the OTA process.

