---
id: 108
title: V2 Early Preview
date: 2012-11-30T20:29:19+00:00
author: bamnet
layout: post
guid: http://www.concerto-signage.org/blog/?p=108
permalink: /blog/2012/11/30/v2-early-preview/
categories:
  - Concerto 2 Development
tags:
  - alpha
  - Concerto 2
  - release
---
Today we&#8217;re releasing an early tech preview of Concerto 2, bringing a fresh technology stack to the open source digital signage ecosystem that we&#8217;ve been cultivating for the better part of the past five years.  Concerto 2 has been rewritten from the ground up, providing a stable platform we can use to solve some of the challenges we&#8217;ve run into with version 1 like the confusing setup process, limited system configurability, and lack of support for new content types like video.  Over the next few weeks we&#8217;ll be releasing some of the new features Concerto 2 supports, starting today with the core stack.

This early preview release provides what we consider core Concerto functionality &#8212; the ability to upload content to feeds, have that content moderated by responsible parties, and then be displayed on screens subscribed to feeds.  This build doesn&#8217;t include many of the long-touted features like video support or better dynamic content; we&#8217;re committed to releasing these soon but need to start gathering some feedback on the core experience first.

If you&#8217;re interested in taking a sneak peek at what we&#8217;re working on in Concerto 2, I encourage you to follow the setup process [here](https://github.com/concerto/concerto#readme "Concerto 2 Readme") to get started.  Please note, Concerto 2 is still under heavy construction.  This software should not be used in a production environment. It is also not backwards compatible with a V1 database, so we&#8217;ve included a tool with [instructions](https://github.com/concerto/concerto/wiki/Importing-from-V1 "V1 Import Wiki") to import your V1 data into V2.

We&#8217;re aware of a handful of outstanding issues with this early preview, but we&#8217;d love to start getting your feedback to start ironing out as many issues as possible in the scope of this release.  Let us know what you think by posting your experience on the [Google Group](http://groups.google.com/group/concerto-digital-signage/ "Concerto Digital Signage"), or opening a bug on our Github [Issue Tracker](https://github.com/concerto/concerto/issues).

_Note: Concerto 2 reports many production errors back to the development team using [Airbrake](https://airbrake.io/pages/home) by default.  At the moment this is an opt-out service, you can turn it off in the Dashboard or by deleting [Gemfile-reporting](https://github.com/concerto/concerto/blob/master/Gemfile-reporting).  We use this automatic reporting to help identify crashes and errors so we can fix them as quickly as possible.  We&#8217;ll post a blog with a bit more information on this process soon._