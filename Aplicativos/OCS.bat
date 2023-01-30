@echo off

mkdir "C:\Users\Public\.soluti\xml-file"

"C:\Program Files\OCS Inventory Agent\OCSInventory.exe" /local /xml=C:\Users\Public\.soluti\xml-file

schtasks /create /tn "OCS-XML" /RU "SYSTEM" /sc onlogon /tr "\"C:\Program Files\OCS Inventory Agent\OCSInventory.exe\" /local /xml=C:\Users\Public\.soluti\xml-file"
