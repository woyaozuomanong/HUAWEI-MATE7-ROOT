88      a8P   88888888888  88888888888  888b      88  
88    ,88'    88           88           8888b     88  
88  ,88"      88           88           88 `8b    88  
88,d88'       88aaaaa      88aaaaa      88  `8b   88  
8888"88,      88"""""      88"""""      88   `8b  88  
88P   Y8b     88           88           88    `8b 88  
88     "88,   88           88           88     `8888  
88       Y8b  88888888888  88888888888  88      `888  

Huawei Ascend Mate 7 root utility
                                                      
Present by Keen Team:
      Liang Chen, flanker017 - CVE-2014-7911 exploit
      idl3r - Kernel vulnerability and exploit

Special thanks to:
      Yaron Lavi and Nadav Markus from Palo Alto Networks for "Mock Location" trick
      Chainfire for SuperSU
      KingRoot (www.kingroot.net) for testing devices

Tested on MT7-TL10 and MT7-CL00 China Domestic edition with B122 SP06 (2014/12/30)
May or may not work on international editions


How to Root
===========
0. AS ALWAYS, BACK UP YOUR DATA BEFORE ROOT
1. Enable Developer options by hitting "Build Number" multiple times in "About phone".
2. In Developer options, turn on USB debugging AND "Allow mock locations".
3. Flight mode is also recommended in case of incoming calls ;-)
4. Connect your phone to your computer.
5. Type in "adb devices" and confirm it is connected.
6. Run do_exploit.bat and follow on-screen instructions.
7. We strongly recommend turning off "Allow mock locations" and USB debugging after root is done.


Q&A
===
Q: Is bootloader unlock required?
A: No. You DO NOT need to unlock the bootloader to get root. This is a "live" root solution which does not use custom 
   recovery.

Q: Why PC connection is needed?
A: In theory there is no need of PC connections. As this is a complex root solution involving two stages of exploit, 
   script running on PC will help you go through the root process while doing all the work in the background for you. 
   In addition, /data/local/tmp is used to keep the exploit clean and reliable. Feel free to check the bat file for 
   details.

Q: You mentioned "exploit". Is my phone vulnerable?
A: Yes. However, it is not likely that these vulnerabilities will be exploited by malware.
   To be detailed:                                                             
   1) It requires magnificent skill set to exploit CVE-2014-7911 in a reliable way. Without "Allow mock locations" 
      enabled, this exploit will NOT work. So we strongly recommend turning it off after root is done.
   2) The kernel vulnerability helps raising credential from system to root. It can NOT be exploited by app userid.
      In addition, a kernel module is installed to block further exploit (hot patch) after root is done.
   In short, it is not likely that a malicious application can chain these two exploits together. And as always, only 
   install application from trusted app markets.

Q: What files you've installed on the device?
A: Besides SuperSU, some additional files are required to disable system partition lock and patch kernel vulnerability.
   After root is done, following files are installed:
	SuperSU.apk and su files:		SuperSU Free 2.40
	/system/xbin/mt7fix.ko:			Kernel vulnerability hot patch
	/system/xbin/uint32_zero:		An all-0 file to support script in /system/su.d
	/system/su.d/killrwprotect.sh:	Kill system partition lock and install kernel hot patch for the vulnerability
   Besides SuperSU files, all remaining files can be modified after root in case you want to add/remove features.

Q: What means "Your device seems not vulnerable!"
A: If this message prompts on your device, it means your device is not vulnerable to CVE-2014-7911, so that this root
   won't work on it. Please disconnect your device and then close the window which has do_exploit.bat running. You may
   also wait for further root solutions.

Q: Where to report bugs?
A: Please reply in this thread with your device model, ROM version and a brief description of symptoms.

