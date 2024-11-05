# Embedded Software Firmware Upgrade

# A1
### Method 1 (Visualization Window)
```
cd tools/A1
sudo ./ota_gui
```
#### Notes: You can input `sudo chmod 777 ota_gui ota.out`, if report "cannot find xxx command"
### Method 2 (bash)
```
cd tools/A1
bash ota.sh bin_file_directory usb_port_directory
```
```
eg: bash ota.sh ../../firmware/A1/ACU_V1.0.1.bin /dev/test_arm_port
```
#### Notes: Before running the bash script, ensure that the USB port is properly bound, as it will be reconnected during the OTA process.

# R1
### Note: During the upgrade process, please ensure the robot's battery level is above 30% and that it will not shut down unexpectedly.
You need to run a script and enter the desired version for the upgrade to complete the embedded software update for the entire machine. 

eg:
```
cd tools/R1
bash r1_embedded_firmware_upgrade.sh ../../firmware/R1/V1_0_1
```
