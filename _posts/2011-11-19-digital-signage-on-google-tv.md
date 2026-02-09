---
id: 47
title: Digital Signage on Google TV
date: 2011-11-19T00:51:55+00:00
author: bamnet
layout: post
guid: http://www.concerto-signage.org/blog/?p=47
permalink: /blog/2011/11/19/digital-signage-on-google-tv/
categories:
  - Concerto Player
tags:
  - android
  - client
  - google tv
  - player
---
The Fall [update](http://googletv.blogspot.com/2011/10/update-on-google-tv.html) to the Google TV brought the Android Market to Google TV devices, allowing developers to write and publish applications for some digital-signage sized screens.  If you&#8217;re looking to run some digital signage on your Google TV you&#8217;re in luck, you can find a [Concerto app](https://market.android.com/details?id=com.concerto.concertotv) in the Market today!

<div id="attachment_56" class="wp-caption alignright" style="width: 310px">
  <a href="/assets/blog/2011/11/device-2011-11-18-222902-e1321678877406.png"><img class="size-medium wp-image-56" title="Concerto on the Market" alt="" src="/assets/blog/2011/11/device-2011-11-18-222902-300x168.png" width="300" height="168" /></a>
  
  <p class="wp-caption-text">
    Concerto on the Android Market
  </p>
</div>

Concerto for the Google TV lets you configure and connect to a Concerto server, letting you specify a server URL and customize a MAC address as needed.  If you&#8217;re interested in tweaking your server slightly, the device will also pass the current screen width and height as parameters in the initial URL.  If you&#8217;re having trouble sizing the screen manually like traditional Concerto v1 screens, you can use these to automatically set the size of the screen so content will render appropriately.

Don&#8217;t have a Concerto server but still want to check out a Concerto player?  The app comes pre-configured to connect to automagically connect to a demo server and pull in some [dynamic content](/help_pages/39)  keeping the information fresh.

The source code for the application is available on [GitHub](https://github.com/concerto/concerto_gtv), and I encourage you to report any [issues](https://github.com/concerto/concerto_gtv/issues) you run into.

<div id="attachment_48" class="wp-caption alignleft" style="width: 310px">
  <a href="/assets/blog/2011/11/ss-1280-1-0-e1321678102387.png"><img class="size-medium wp-image-48 " title="Setting on the Google TV" alt="" src="/assets/blog/2011/11/ss-1280-1-0-300x168.png" width="300" height="168" /></a>
  
  <p class="wp-caption-text">
    Customize the URL and MAC address for Concerto on the Google TV
  </p>
</div>