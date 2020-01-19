---
id: 194
title: HotelHummingbird Release
date: 2013-08-12T21:17:21+00:00
author: Brian Michalski
layout: post
guid: http://www.concerto-signage.org/blog/?p=194
permalink: /blog/2013/08/12/hotelhummingbird-release/
categories:
  - Uncategorized
---
After a few hiccups along the way (like the mysterious 0.5.0.GolfOtter release), we&#8217;re ready to share 0.6.0.HotelHummingbird with you.  It&#8217;s been over a month since our last release and we&#8217;ve been busy at work making the experience a bit snappier and improving the Add Content form.  To get started, you can find our installation to get started in our Github [wiki](https://github.com/concerto/concerto/wiki/Installing-Concerto-2).

Since you likely missed out on the 0.5.0.GolfOtter release you also missed a new background processing model which should make Dynamic Content processing much more robust and reliable.  Concerto now includes a script to kick off background processing using something like `sudo /etc/init.d/concerto start` and manage the background workers just like you would a regular process.

Some notable changes include:

  * Textile support in the Ticker Text field.
  * Frontend support for subdirectories, like /concerto/frontend/1.
  * Slightly better garbage collection in the frontend.
  * New background processing model.
  * New feed selector, system-wide.
  * New templated creation / editing workflow.
  * New content creation experience with preview support.

You can find the full list of changes between our last announced release and this one [here](https://github.com/concerto/concerto/compare/0.4.0.foxtrotflamingo...0.6.0.hotelhummingbird). Please get in touch with us via our [group](https://groups.google.com/group/concerto-digital-signage) or [issue tracker](https://github.com/concerto/concerto/issues) if you come across a bug or have a feature suggestion for us!