echo "Removing Ext3nder"
rm -rf Applications/Extender.app 
rm /bootstrap/Library/SBInject/Ext3nder_SpringBoard.dylib 
rm /bootstrap/Library/SBInject/Ext3nder_SpringBoard.plist 
rm -rf /Library/Switches/Ext3nderSwitch.bundle
uicache
echo "All Done, You should Probably respring"

