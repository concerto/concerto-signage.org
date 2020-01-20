---
layout: help_page
title: Customizing the Live CD
permalink: /help_pages/31
folder: Deploying Concerto
date: 2009-07-23T04:41:00+00:00
---

The Live CD ships by default with the URL of RPI's Concerto installation. Changing this to another setup is a simple process. To accomplish the task, you'll need a copy of the Live CD, a text editor, and a CD burning program which can create a bootable ISO or disk. We recommend using the "mkisofs" command line utility to accomplish this.

Step 1: Copy the contents of the ISO file to a local directory. You'll need to burn the ISO file to a disk, or mount it using your OS's facilities or an emulation utility, before you can do this.

Step 2: Using the text editor, create a file called "config.pl" in this directory. (In case you're curious, config.pl is actually a Perl script, but you don't need to know how to program to use it. It is run early in the boot process and can be used to customize the default values of many system settings. The settings which can be customized, and their default values, can be found in /etc/defaults.pl on the live system.)

Step 3: Add the following line to config.pl:

<pre>$ENV{'CONCERTO_INSTALL'} = 'http://concerto.example.com/install/base/url/';</pre>

The trailing slash is required! Of course, you need to replace the URL in the quotes with the address of your Concerto installation.

Step 4\. Use the CD burning tool of your choice to create a bootable ISO. Use the 'isolinux/isolinux.bin' file as the boot image. If using mkisofs, the following command will accomplish the task:

<pre>mkisofs -o my_concerto.iso -b isolinux/isolinux.bin -c isolinux/boot.cat \
-no-emul-boot -boot-load-size 4 -boot-info-table -r -J where_you_extracted_the_original_iso/</pre>


You need to replace where_you_extracted_the_original_iso with the path where you actually did that; this will create a new ISO image, my_concerto.iso, in your current working directory. At this point, you're ready to fire up your CD duplicator and roll out Concerto to some screens, but make sure to test first! If you receive the Concerto "BSoD" indicating that the MAC address is not found, and you've already added the screen to the content server, check that you don't have any syntax errors (such as missing curly braces or quotation marks) in the config.pl file.