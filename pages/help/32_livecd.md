---
layout: help_page
title: Introducing the Concerto Player Live CD
permalink: /help_pages/32
folder: Deploying Concerto
date: 2011-09-20T22:28:00+00:00
---

Concerto Player is a live CD which can be used to boot a computer into an operating environment designed with Concerto in mind. Using Concerto Player, it's not necessary to search the Internet for the correct plugins to run a fullscreen browser, or configure your OS to start it automatically on boot. You simply create a CD image for your Concerto installation, insert the CD in your computers, and boot from the disk.

# Download the Live CD ISO

[Get the 165 MB ISO](http://downloads.concerto-signage.org/concerto-player-20090722.iso)

You'll most likely need to [customize the ISO](/help_pages/31) to work with your installation. Then, burn the ISO as a disc image using your favorite CD burning software.

# Limitations and Future Work

At this time, Concerto Player has a few shortcomings. While the CD contains drivers for a wide variety of hardware, not all Ethernet cards are supported. Wireless network interfaces are unsupported at this time but will be supported via a plugin in the near future.

Additionally, some video cards may require additional X server configuration to function, and others may require this step to achieve the highest degree of performance. A configuration management plugin is available for this task, but it's not yet ready for general release. Please contact us if you're interested.

# Install Concerto Player to a Storage Device from the CD

If you're feeling adventurous, you can try installing the client firmware to a hard drive or flash memory device (such as a CompactFlash card, as we did at RPI). See [this page](/help_pages/33) for more info. Please note that this method is **extremely experimental** still, but we are working to provide more support.