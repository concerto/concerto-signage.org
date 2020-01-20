---
layout: help_page
title: Concerto Player Installation
permalink: /help_pages/33
folder: Deploying Concerto
date: 2011-09-26T14:52:00+00:00
---

If you're feeling adventurous, it's possible to install [Concerto Player](/help_pages/32) on a flash device or hard disk. You'll need some familiarity with Linux bootloaders to accomplish this right now. First, copy the "kernel", "initrd", "concerto.squashfs", and all ".plugin" files from the CD to your target medium of choice. You'll also need to create a "config.pl" file using [these directions](/help_pages/31) if you haven't already. Then, install a bootloader such as grub. You'll need to configure the bootloader to load the initial ramdisk (the "initrd" file), and to pass the following kernel parameters:

root=/dev/ram0 init=/sbin/concerto_boot

Some devices, such as USB flash drives, require additional time to be detected. In this case, you can add another boot parameter:

rootwait=10

This will cause the system to wait 10 seconds before searching for the files required to boot.

On the live CD, it's possible to access a shell by switching to virtual console 4 (Ctrl-Alt-F4 on a connected keyboard.) If this functionality is undesirable, remove the root-shell.plugin file.

We'll be working on a script to automate the installation process - it should be ready in the near future.

For now, if you're on Windows, we recommend the following procedure for installation to mass-storage media:

1.  Choose a suitable boot medium (e.g. a CF card, hard disk, or flash drive), and connect it to your Windows-based computer.
2.  Format the boot medium using either the FAT16 or FAT32 filesystem. **Do not use a disk formatted with NTFS.**
3.  Download SYSLINUX from [http://www.syslinux.org/wiki/](http://www.syslinux.org/wiki/)
4.  Extract the .zip file somewhere, and open a command prompt. Navigate to the "win32" folder within the extracted package, where "syslinux.exe" is located.
5.  Run the following command: `syslinux -ma z:` where z: is the drive letter of your target boot medium. WARNING: Do not run this command on a drive whose contents you care about, or your system's boot disk. It will overwrite the MBR with the SYSLINUX bootloader.
6.  Copy the contents of the live CD root directory to the newly-created boot medium, the drive where you just installed SYSLINUX. Copy the file "isolinux/isolinux.cfg" from the live CD as well, but put it in the root and rename it to "syslinux.cfg".
7.  Create a config.pl file to match your site's configuration. Copy this file to your boot medium.
8.  You must edit the syslinux.cfg file to add the rootwait boot parameter, if necessary, and remove the "cdboot=1" parameter. These parameters are on the line starting with "APPEND".

You can beta test a script which automates this process. [Download the package here](http://downloads.concerto-signage.org/ConcertoFlashInstall_20091109.zip "Download the package here"), then unzip it and open a command prompt. Navigate to the directory where you unzipped the package, then run a command such as "setup.bat e:", where e: is the drive letter of the device to install to. We appreciate any feedback on this preliminary release.