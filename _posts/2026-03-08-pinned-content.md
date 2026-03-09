---
title: Pinned Content, for the static side of life
date: 2026-03-08T22:21:00-05:00
author: bamnet
layout: post
permalink: /blog/2026/03/08/pinned-content
description: "Concerto 3 introduces pinned content, a generic solution for keeping specific content locked to a field on a screen."
image: /assets/images/blog_20260308.jpg
categories:
  - Development
  - Concerto 3
tags:
  - Software Design
---

Concerto screens are at their best showing a wide variety of content, rotating through the
latest announcements, sports scores, and upcoming events. With different scheduling algorithms,
it's easy to get the right mix of content wherever your screen is.

Sometimes you don't want the content to change though. That bottom corner of the screen should
always show the clock, or maybe today's class schedule needs to always be right across the top
of the screen.

Concerto 3 introduces a new approach to solving this: **pinned content**. With pinned content,
screen administrators can pick a specific piece of content, like today's lunch special, and "pin"
it to a field on the screen, like a ticker field. The selected content will stick there, overriding
any feeds, until removed. Presto!

### How we got here

Pinned Content is the third and, in this author's humble opinion, the best approach we've had for
solving this problem.

In Concerto 1, we realized screens typically needed a Date Time display like
a numerical clock. Our entire system was designed to mix and rotate content between a variety of feeds,
so we quickly hacked in a clock using the existing infrastructure - a single piece of content
(ok, it was a bit special) submitted to a single "clock" feed. That "clock" feed could be subscribed to
the field where the clock should go.

This worked well enough with 1 clock, but started to break down when screens had different date time
displays. Some screens were small and just wanted to show "11:34 AM", others were larger and wanted the full
"Mon June 4 11:34 AM" display. Re-using our existing content <-> feed <-> field mapping meant we had
to create a dedicated feed for each clock... eww.

We fixed this in Concerto 2 by moving the concept of a clock to be a special config at the field level,
no longer modeled as a piece of content. Each screen could have its own date time format and other
customizations without the added overhead of a dedicated feed for each. A better solution, but narrowly
scoped to the clock problem.

To improve on this in Concerto 3, we pivoted our approach from solving the specific clock problem, to a
more generic problem of how to get content to stick in a field and override the feeds. In doing so, a
much more generic solution becomes apparent: optionally associate content directly with each field aka
pinned content.

This has a big benefit - any piece of content can be pinned to any field. While different clock formats
still need to be represented as different pieces of content, those contents can be re-used and pinned
to multiple screens. We're not limited to just pinning clocks either, the same mechanism lets us pin
a graphic to the large center of a screen during an event.

I'm excited we finally came up with a better solution here, and looking forward to hearing (seeing?) how
it gets used, both for clocks and other content.
