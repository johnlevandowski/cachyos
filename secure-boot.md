Secure Boot
===========

Enable Setup Mode in Gigabyte/Aorus UEFI BIOS
---------------------------------------------

Secure Boot Mode = Custom  
Reset to Setup mode  

* it will ask for a confirmation, choose Yes  
* then it will ask whether you wan't to reboot without saving, choose No  

Expert Key management  
Factory Key Provision = Disable  
Save & Exit & Reboot  


CachyOS Terminal
----------------

https://wiki.cachyos.org/configuration/secure_boot_setup/  
Follow Instructions "Installing sbctl and Enrolling Keys"  
Follow Instructions "Signing the Kernel Image and Boot Manager > Limine"  

* Enable automatic config checksum enrollment in /etc/default/limine  
* Proceed to generate a hash for Limine’s splash image  
* Enroll the config checksum and sign Limine’s EFI binary  

Reboot - Enable secure boot (secure boot will stay in custom mode)  
Follow Instructions "Secure Boot Status Check"  
