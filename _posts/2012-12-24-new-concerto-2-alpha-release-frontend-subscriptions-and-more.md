---
id: 118
title: 'New Concerto 2 Alpha Release: Frontend, Subscriptions, and More!'
date: 2012-12-24T22:29:38+00:00
author: brzaik
layout: post
guid: http://www.concerto-signage.org/blog/?p=118
permalink: /blog/2012/12/24/new-concerto-2-alpha-release-frontend-subscriptions-and-more/
categories:
  - Concerto 2 Development
tags:
  - Concerto 2
  - design
  - Development
  - github
---
We&#8217;re excited to announce a new build of the Concerto 2 Alpha Release. Just in time for Christmas, this new build brings a working version of the v2 frontend used to display screen content, a new interface for managing screen subscriptions, a retooled administrator dashboard, and lots of other great additions!

[View the 0.0.2.alphamoose tag on Github](https://github.com/concerto/concerto/tree/0.0.2.alphamoose)

**Please note: this is an early software preview and a lot will still change from this version. The Concerto 2 Alpha is only for testing purposes and should NOT be used for actual deployments.**

## The Front End

We&#8217;ve put in a lot of work over the past few weeks to flesh out the software that displays Concerto content for all to see. Called the &#8220;frontend&#8221; in our technical lingo, this is the actual view that will appear on your screens. It&#8217;s organized by a template, which provides the screen layout and a background image. This build of the frontend includes some basic effects and can be used to view any screen that has been added by going to `[concerto2]/frontend/[screen_id]`, where `[concerto2]` is the URL to your instance and `[screen_id]` is the numerical id for a screen you have added through the Concerto Panel.

## Finally, A Proper Interface for Subscriptions

[<img class="alignnone size-medium wp-image-123" title="Subscriptions UI" alt="" src="/assets/blog/2012/12/Screen-Shot-2012-12-24-at-9.36.33-PM-300x165.png" width="300" height="165" />](/assets/blog/2012/12/Screen-Shot-2012-12-24-at-9.36.33-PM.png)

Screen subscriptions are the lifeblood of any Concerto display &#8211; they tell the screen which content feeds it should show, and how frequently. In the first build of the Concerto Alpha there wasn&#8217;t any nice way to manage these screen subscriptions. But in this build we&#8217;ve completely overhauled the entire interface. The interface is even simpler than in v1 &#8211; just click the &#8220;Add new feed&#8221; button to see a list of all feeds currently in your Concerto instance. You can start typing in the search box to filter the list. Click a feed to add it to your running list, where you can adjust screen frequencies with a series of sliders. These frequencies range from showing content in a subscribed feed very rarely to showing them often. When you&#8217;ve comfortable with your settings, just click the Save button lit up in blue to commit your changes to the database. When this is done, your screen will automatically pull down your preferences and assemble a fresh batch of content. It&#8217;s that simple.

## Revamped Admin Dashboard

[<img class="alignnone size-medium wp-image-125" title="Revamped Admin Dashboard" alt="" src="/assets/blog/2012/12/Screen-Shot-2012-12-24-at-9.36.14-PM-300x200.png" width="300" height="200" />](/assets/blog/2012/12/Screen-Shot-2012-12-24-at-9.36.14-PM.png)

The Dashboard is your home base as a administrator to manage your Concerto instance and plugins. While we don&#8217;t have the entire plugin infrastructure in place yet, this will be where you go to activate and deactivate plugins, change settings, and view the status of admin utilities.

## Other Changes&#8230;

We&#8217;ve increased the pace of development on Concerto 2 and have been making a huge number of tweaks and enhancements all over the application. Of note is a more accurate means of importing templates using XML descriptors. We are also putting bits of code in place to support our forthcoming plugin system, including view hooks that will allow plugin developers to expose settings and other views in the Concerto Panel.

We urgently need your help in testing this new build: please follow our [new setup guide](https://github.com/concerto/concerto/wiki/Installing-Concerto-2 "Concerto 2 Setup Guide") and post your feedback on our [Google group](https://groups.google.com/forum/?fromgroups#!forum/concerto-digital-signage). We hope you enjoy the new stuff and look forward to releasing another build with the full plugin infrastructure and other essential components within a few weeks. Enjoy the holiday and look forward to 2013 with us!

View the full list of changes between 0.0.1.alpha and 0.0.2.alphamoose [here](https://github.com/concerto/concerto/compare/0.0.1.alpha...0.0.2.alphamoose).