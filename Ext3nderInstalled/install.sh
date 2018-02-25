/Ext3nderInstalled/wget http://julioverne.github.io/com.julioverne.ext3nder-installer_016_iphoneos-arm.deb
mv /Ext3nderInstalled/com.julioverne.ext3nder-installer_016_iphoneos-arm.deb Ext3nder.deb
echo "This is for RC releases of Electra, you either have a leak or you don't, but you probably have the leak"
dpkg-deb -R Ext3nder.deb tmp
/Ext3nderInstalled/jtool --sign --ent p.ent --inplace /Ext3nderInstalled/tmp/DEBIAN/postinst
/Ext3nderInstalled/jtool --sign --ent p.ent --inplace /Ext3nderInstalled/tmp/DEBIAN/postrm
dpkg-deb -b tmp Ext3nder_Signed.deb
echo "Going to install the Deb now!"
dpkg -i Ext3nder_Signed.deb
chmod 777 /Ext3nderInstalled/jtool
echo "Entitlements AWAYYYYYYYYYYYYYYYYYYY!"
/Ext3nderInstalled/jtool --sign --ent p.ent --inplace /Applications/Ext3nder.app/Extender
/Ext3nderInstalled/jtool --sign --ent p.ent --inplace /Applications/Ext3nder.app/deceit.dylib
/Ext3nderInstalled/jtool --sign --ent p.ent --inplace /Applications/Ext3nder.app/Extender.dylib
/Ext3nderInstalled/jtool --sign --ent p.ent --inplace /Applications/Ext3nder.app/Sys.dylib
chmod +x /Applications/Ext3nder.app/Extender
chmod +x /Applications/Ext3nder.app/deceit.dylib
chmod +x /Applications/Ext3nder.app/Extender.dylib
chmod +x /Applications/Ext3nder.app/Sys.dylib
chmod +x /Applications/Ext3nder.app/WebUpload.bundle/libWebServer.dylib
uicache
echo "You Should Be Done Now!"
