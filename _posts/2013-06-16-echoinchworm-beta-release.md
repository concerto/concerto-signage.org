---
id: 176
title: EchoInchworm Beta Release
date: 2013-06-16T02:02:34+00:00
author: bamnet
layout: post
guid: http://www.concerto-signage.org/blog/?p=176
permalink: /blog/2013/06/16/echoinchworm-beta-release/
categories:
  - Concerto 2 Development
tags:
  - beta
  - Concerto 2
  - release
---
We&#8217;ve just finished pushing our latest update to the Concerto 2 beta, &#8220;0.3.2.EchoInchworm&#8221;.  In the two weeks since our last release we&#8217;ve been busy addressing a handful of feature requests and bugs reported since the last release. You can find our installation to get started in our Github <a href="https://github.com/concerto/concerto/wiki/Installing-Concerto-2" target="_blank">wiki</a>.

Among the notable changes you&#8217;ll find **support for legacy (V1) screen urls**.  Concerto 2 correctly responds to urls like http://concerto/?mac=00:aa:bb just like Concerto 1 did.  You should now be able to test out Concerto 2 without updating the URL on your existing clients.

We also added a **new <iframe> content type**.  If you need to display a remote web page or dashboard, you can create a piece of content which will use an iframe to display the url on a screen.

This release also includes some speed improvements to **content browsing** and bug fixes to **template importing** (aka it works now, unlike the last release).

Almost as exciting as all of those changes is the updated demo system.  Head on over to <a href="http://nightly.concerto-signage.org" target="_blank">http://nightly.concerto-signage.org</a> and check out this Concerto 2 release running on Heroku.  If you haven&#8217;t taken the plunge yet, the demo&#8217;s worth checking out to see what Concerto 2 is all about!

Do get in touch with us via our [group](https://groups.google.com/group/concerto-digital-signage) or [issue tracker](https://github.com/concerto/concerto/issues) if you come across a bug or have a feature suggestion for us.  It&#8217;s great to hear when things work (or don&#8217;t) so we can improve for the future!

You can find a full list of changes for this &#8220;0.3.2.echoinchworm&#8221; release <a href="https://github.com/concerto/concerto/compare/0.2.0.deltaocelot...0.3.2.echoinchworm" target="_blank">here</a>.