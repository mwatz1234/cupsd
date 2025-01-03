#Copy the conf files if they do not exist
mkdir -p /etc/cups/printers
cp -n /temp/printers.conf /etc/cups/printers.conf
cp -n /temp/cupsd.conf /etc/cups/cupsd.conf
#Remove the temp directory
rm -rf /temp/

#soft link the 2 .conf files
mkdir -p /etc/cups/config
ln -s /etc/cups/printers.conf /etc/cups/config/printers.conf
ln -s /etc/cups/cupsd.conf /etc/cups/config/cupsd.conf
