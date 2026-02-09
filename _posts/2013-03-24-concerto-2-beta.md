---
id: 157
title: Concerto 2 Beta
date: 2013-03-24T21:24:57+00:00
author: bamnet
layout: post
guid: http://www.concerto-signage.org/blog/?p=157
permalink: /blog/2013/03/24/concerto-2-beta/
categories:
  - Concerto 2 Development
tags:
  - beta
  - Concerto 2
  - release
---
Five years ago today a half dozen students debuted &#8220;Concerto&#8221;, the home-grown digital signage system for <a href="http://www.rpi.edu/" target="_blank">RPI</a>.  Today we&#8217;re proud to announce the first beta release of Concerto 2, building a much more robust an extensible platform for open source signage of the future.  To get started head over to our installation guide [here](https://github.com/concerto/concerto/wiki/Installing-Concerto-2).

When we first released Concerto 1 at RPI we had no immediate plans publicize the open source software powering it.  None of us were quite sure if the project was going to take off past the 2 maiden screens on campus, never mind have a place outside our small collegiate community.  We&#8217;ve been more than a bit surprised how well Concerto&#8217;s been received this far and are excited by all the interesting places screens have popped up.

If you&#8217;re looking at setting up a new digital signage system give Concerto 2 a try! We&#8217;re eager to [hear](https://groups.google.com/group/concerto-digital-signage) any feedback and help with any problems that arise during the installation / setup process; let us know how it goes.  Reading our past early preview posts [[1](/blog/2012/11/30/v2-early-preview/ "V2 Early Preview"), [2](/blog/2012/12/24/new-concerto-2-alpha-release-frontend-subscriptions-and-more/ "New Concerto 2 Alpha Release: Frontend, Subscriptions, and More!"), [3](/blog/2013/03/08/introducing-dynamic-content-in-concerto-2-and-more/ "Introducing Dynamic Content in Concerto 2 (and more!)")] will share an overview of the features you can expect to find in Concerto 2.

For the Concerto 1 users, this beta release includes all the core functionality you&#8217;re familiar with in V1.  Some of the more noticeable changes include a redesigned UI and workflow (the buttons are different, the nouns are the same), more granular authentication and authorization controls, and the notion of plugins so we can add support for additional content types to the system like RSS feeds, YouTube Videos, and more.  Behind the scenes we rebuilt the system from scratch, trading PHP for Ruby on Rails.

Those who&#8217;ve been living on the bleeding edge with us through the rockier early preview releases should find all of the current show-stopping bugs fixed in this release.  Everything that we knew about that was broken has been fixed and we made significant strides to achieve feature parity with the common V1 installation.  We&#8217;ve added a clock to the frontend among other improvements, tossed in a weather plugin, and fixed some misbehaving user management pages.  Thanks for all your help testing out the Early Preview releases!

Please get in touch with us via our [group](https://groups.google.com/group/concerto-digital-signage) or [issue tracker](https://github.com/concerto/concerto/issues) if you come across a bug or have a feature suggestion for us.  You can find a full list of code changes for this &#8220;0.1.0.charliehorse&#8221; beta release [here](https://github.com/concerto/concerto/compare/0.0.3.bravochicken...0.1.0.charliehorse).