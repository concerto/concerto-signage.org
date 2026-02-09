---
id: 138
title: Introducing Dynamic Content in Concerto 2 (and more!)
date: 2013-03-08T00:55:06+00:00
author: bamnet
layout: post
guid: http://www.concerto-signage.org/blog/?p=138
permalink: /blog/2013/03/08/introducing-dynamic-content-in-concerto-2-and-more/
categories:
  - Concerto 2 Development
tags:
  - Concerto 2
  - release
---
Concerto 2 has come a long way since we released the last update (0.0.2.alphamoose) back in December. Today we&#8217;re releasing the latest preview of Concerto 2, 0.0.3.bravochicken. This new build includes support for dynamic content, a fresh new content browsing UI, and dozens of backend improvements, bugfixes, and tweaks spread across over [230 commits](https://github.com/concerto/concerto/compare/0.0.2.alphamoose...0.0.3.bravochicken)!

To get started with the latest build of Concerto, check out our [installation guide](https://github.com/concerto/concerto/wiki/Installing-Concerto-2) or view the [0.0.3.bravochicken](https://github.com/concerto/concerto/tree/0.0.3.bravochicken) tag directly. We&#8217;ve got virtual machine images, Debian/Ubuntu packages, and the regular old source code standing by to help get you up and running quickly.

**Please note: this is an early software preview and a lot will still change from this version. The Concerto 2 Alpha is only for testing purposes and should NOT be used for actual deployments.**

## Dynamic Content

[<img class="size-medium wp-image-149 alignright" alt="RSS Content Creation" src="/assets/blog/2013/03/rss_bravochicken-300x239.png" width="300" height="239" />](/assets/blog/2013/03/rss_bravochicken.png) Concerto 2 introduces a plugin model to allow different types of Dynamic Content to be uploaded directly in the Add Content form letting you can setup an RSS feed in the same familiar place you would upload a new graphic. For now we&#8217;ve bundled Concerto 2 with plugins to support a very simple RSS display and YouTube video support. As we develop more plugins for the Concerto ecosystem administrators will be able to provide their users with a variety options when uploading content, hopefully with forms that don&#8217;t require you to serialize PHP arrays in your head.  We&#8217;re going to devote a full blogpost to the nitty gritty details of dynamic content in the future, stay tuned for more on this front!  If you&#8217;ve got a specific idea for a dynamic content source we should be keeping in mind open up an issue on [Github](https://github.com/concerto/concerto/issues).

## Updated Content Browsing UI

[<img class="alignright size-medium wp-image-146" alt="Content Browsing" src="/assets/blog/2013/03/bravochicken_browse-300x183.png" width="300" height="183" />](/assets/blog/2013/03/bravochicken_browse.png)We redesigned the core content browsing experience to provide a bigger window to show off the individual pieces of content in the system. For systems with lots of content, pagination lets users explore all the content in a large installation without an initial loading bottleneck. We also introduced some new filter controls let you rewind time to explore content of yesteryear or take a peak at what&#8217;s coming up in the future. If you&#8217;ve got Dynamic Content in the mix you&#8217;ll see Concerto 2 introduces stacks to collect all the content together under the it&#8217;s root.

## Almost There&#8230;

Our first Early Preview release was shared with you back in late [November](http://www.concerto-signage.org/blog/2012/11/30/v2-early-preview/). We quickly pushed out some updates in December&#8217;s release pushing Concerto 2 to to just about match the feature parity V1 provided. With this release we&#8217;ve tackled some of the harder challenges and limitations of Concerto 1 and I can safely speak for the rest of the team saying that we&#8217;re looking forward to sharing a stable beta release ready for testing in production environments quite soon.

After getting Concerto 2 up and running please send your feedback along to us (or send it along if you can&#8217;t get it up and running), we&#8217;ll be monitoring the [Google Group](http://groups.google.com/group/concerto-digital-signage/) closely for V2 related content and are keen to track down any bugs or unexpected behaviors that crop up.