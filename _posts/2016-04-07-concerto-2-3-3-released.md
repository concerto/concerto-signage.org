---
id: 215
title: Concerto 2.3.3 Released
date: 2016-04-07T15:42:04+00:00
author: august
layout: post
guid: http://www.concerto-signage.org/blog/?p=215
permalink: /blog/2016/04/07/concerto-2-3-3-released/
categories:
  - Uncategorized
---
Today, we’re releasing Concerto 2.3.3. The main change in this release is a fix for the image rotation issues we’ve had [reported to us](https://github.com/concerto/concerto/commit/1416e09ee80f01c1103bfb13e2ad47a08c9b2507) that were causing images to display much more often than expected. This release also contains a number of bug fixes for how we handle large images, group membership, and the list of screens. Those installing from source should also know that because of updates to Rails and many of our gem dependencies, Ruby 1.9 is no longer supported. Concerto is now tested on Ruby versions 2.0.0 through 2.3.0.