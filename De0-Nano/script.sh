sudo killall jtagd
sudo chmod 755 /sys/kernel/debug/usb/devices
sudo chmod 755 /sys/kernel/debug/usb
sudo chmod 755 /sys/kernel/debug
sudo mount --bind /dev/bus /proc/bus
sudo rm /proc/bus/usb/devices
sudo ln -s /sys/kernel/debug/usb/devices /proc/bus/usb/devices
sudo ~/altera/13.1/quartus/bin/jtagd
sudo ~/altera/13.1/quartus/bin/jtagconfig
