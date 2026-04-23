SKIPUNZIP=0

ui_print "- Creating file /data/local/debian..."
mkdir -p /data/local/debian
ui_print " "

ui_print "- Extracting Debian..."
tar -xJf $MODPATH/debianfs-arm64.tar.xz -C /data/local/debian
ui_print " "

ui_print "- Giving run permanents..."
set_perm_recursive $MODPATH/system/bin 0 0 0755 0755

ui_print " "
ui_print "- Succesfully installed!"
ui_print "- Do not forget to reboot!"
