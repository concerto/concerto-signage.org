---
title: "Concerto 2: The Good, The Bad, and The Over-Engineered"
date: 2026-02-17T22:48:00-05:00
author: bamnet
layout: post
permalink: /blog/2026/02/17/concerto-2-retrospective
description: "A retrospective on 10+ years of Concerto 2 development — frontend framework choices, plugin architecture pitfalls, and lessons learned."
image: /assets/images/blog_20260217.jpg
categories:
  - Development
  - Retrospectives
tags:
  - Software Design
  - Lessons Learned
---

Concerto 2 was an ambitious plan to rebuild our application from the ground up,
fixing all the little corners we backed ourselves into with the first version of
Concerto. Most importantly, Concerto 2 needed to be something that anyone could
set up and start using, instead of an application hardcoded to the
idiosyncrasies of our [university](https://www.rpi.edu) in upstate New York.

I think we achieved those goals, but looking back on the past 10+ years of
development _(wow, has it been that long!)_ there are a few decisions I made
that hampered our ability to perform ongoing maintenance and development of the
Concerto 2 codebase.

As I atone for my mistakes with a "LTS" focused version of Concerto, I wanted to
debrief on what went wrong. Maybe you can avoid the same mistakes I made.

## Frontend Frameworks

I consistently picked the losing horses of 2010's frontend frameworks.

We started with **Google's Closure Compiler** which provided a very "correct"
implementation, with all the benefits of type checking, tests, and robust set of
common libraries that modern day developers have come to enjoy.

Unfortunately it was quite complicated to get setup and working right. The
JavaScript that got written was verbose and hard to understand if you weren't
living and breathing in the framework. I'm looking at you `goog.provide` and
`goog.require`.

We transitioned to web components powered by the **Polymer Project**. The idea of
web components was great; different content types, like Graphics and Videos,
could have their own self-contained web component. This helped establish clear
interfaces between different layers of the frontend player which was sorely
lacking in Concerto 1's jQuery-based frontend.

As far as I can tell Polymer never really took off, leaving us with a limited
ecosystem of documentation and examples to draw from. It felt like we were often
pushing the bounds of what was possible in Polymer, and that was more
representative of how limited the ecosystem was than how advanced our use
cases were.

Eventually, Marvin kept up with the times enough to realize that Vue made a
great choice for a frontend and started building a much more reasonable
implementation. I've drawn heavy inspiration from his early work building out
the new Vue 3 frontend.

## Plugin Maintenance

Concerto 2 has a robust plugin system. Worried about polluting the core of the
application with extra or optional functionality, we pushed lots of features to
be developed as standalone plugins - largely powered by Rails Engines to be
packaged and installed as gems.

This achieved our goal of keeping the core as lightweight as possible, but made
maintenance and ongoing nightmare thanks to the dependency tree. When there's a
security update in a common library - like rack - we need to update versions
across each plugin and re-release them. For example, the latest `rack`
vulnerability requires updates and releases across 9 different repos.

Dependabot makes this a tractable problem, but keeping up with all the different
repositories became a lot of overhead for a volunteer project.

This was further compounded by Rails version updates. When a new major version
of Rails was released we needed to update each of the plugins and often fix
subtle behaviors to keep them working. We didn't have great integration tests to
catch these cases so someone needed to have all the plugins installed,
configured correctly, and able to tell what it meant for them to be working vs
not.

In hindsight, we should have had more conversations about the functionality we
wanted to support in Concerto and brought the vast majority of these plugins
into the core application.

## Dynamic Installation

Installing someone else's Ruby on Rails application has historically been more
of an art than a science. In the days before Docker and Kamal, we wanted to
avoid System Administrators having to muck around in Gemfiles, `.rb` environment
files, or yaml configs. After installing Concerto, perhaps via our `.deb` or
Virtual Machine, the admin would only need to click though our friendly web UI
to configure everything.

To make this happen, we wrote hooks deep into the initialization process for
Rails. These hooks injected critical information from the database, like a list
of Gems to be loaded (those plugins!) and how auth should be configured.

It was brilliant engineering work by some of the best developers I know.

Somewhere along the way, Rails (or maybe Ruby?) overhauled the initialization
process. It's better, faster, more effecient... I dunno, I didn't keep up with
the change. The side effect was that many of our clever hooks were broken in
very subtle ways, and it was far enough in the rear-view mirror that nobody
remembered exactly what we did, how it worked. and how to get it working again.

> _We were clever. Being clever is not always a great idea._

Explicit goals of my current work including being as boring as possible and
doing things the "rails way". Optomistically, that will minimize our surprises
when Rails ships updates. Or maybe I'll be writing another one of these posts in
10 years. Only time will tell.
