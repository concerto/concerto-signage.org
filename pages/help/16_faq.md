---
layout: help_page
title: Frequently Asked Questions (FAQ)
permalink: /help_pages/16
folder: Deploying Concerto
date: 2012-05-05T04:29:00+00:00
---

# General

## What is Concerto?

Concerto is a digital signage system that encourages wide-area communication. Concerto's ability to enable location-specific advertising, ease of message distribution, and its unique and powerful blending of content from many different content categories (known as feeds) make it ideal to any college campus, workplace, or municipal area.

### What does the name "Concerto" mean?

In musical terms, a "concerto" is a masterpiece that highlights one instrument amidst an entire orchestra. Likewise, Concerto the digital signage system highlights the messages of one organization while enhancing the overall value of that organization's communications by tying in all of the other diverse messages important to the entire campus community. The case used to be that one organization, such as the management school, would have its own information system isolated from the rest of the campus community that served up only management-related announcements. Concerto changes the game through the use of "feeds," which are content categories based on the ways in which the university already operates.

### Is Concerto free to use?

Yes.  The Concerto codebase is released under a GNU Public License (v2.0) and is available for download [here](/deploy).

### Which web technologies are used in the current version of Concerto?

Concerto is implemented in the PHP programming language and heavily utilizes cascading stylesheets (CSS) for page styling. It uses the jQuery library for Javascript effects and several sets of libraries for basic functionality. Concerto is a database-enabled application that relies on MySQL for database management.

### How long has Concerto been online?

Concerto as a web application has officially been online in various production enviroments for a few years now. Testing was conducted for months prior to the official rollout of the software. The first Concerto displays appeared on the RPI campus on March 28, 2008.

### Is Concerto open source software?

Of course!

### Is Concerto built on any existing content management systems or web applications?

No. Concerto was created by the Student Senate Web Technologies Group in 2007 as a completely new software application.

## Front End Displays

### What actually drives the displays I see on those flat panel televisions on campus?

Part of Concerto's unique approach to digital signage is the pairing of each display with its own small form factor computer (SFFC). These machines are extremely lightweight, require little power, and deliver high fidelity images and advanced control to their screens. They connect to the campus network via ethernet and are often mounted next to or behind their respective displays.

### Which operating system runs on each SFFC?

Each SFFC runs a custom Linux distribution based on the Debian core and enhanced by the Concerto team. This approach brings the strong security, stability, and modularity of the Linux kernel to our front end displays.

### Doesn't having one computer next to each screen increase the chances of hardware failure?

Aside from the heatsink fan over its low-power CPU and one in the power supply, each Concerto SFFC has no other moving parts. The video card is fanless, and there is no hard drive. Rather, each Concerto SFFC runs off of a compact OS image on a CompactFlash memory card. These flash-based memory media are extremely durable and much less prone to error than moving hard drive heads.

### What about two flat panel televisions that are back to back or hanging right next to one another? How does Concerto work with those configurations?

The 1:1 pairing of a screen to a computer unit allows each display to be completely separate and distinct from all other displays in the system. This is a clear benefit of Concerto's methodology. However, in the case that the operator of two screens would like each screen to show the same picture, one SFFC can drive both displays with a dual-video card configuration. This has already been implemented successfully at one Concerto installation.

## Back End Control

### What are some details about the backbone on which Concerto operates?

The computers at front end displays for Concerto only deliver images to their respective displays. That's it. All other Concerto features and functions are powered by a central server hosting the main Concerto web-applicatio.

### How do users of the Concerto Control Panel authenticate? Are special login accounts required just for Concerto?

Special logins are not required for Concerto.  Concerto was designed to work with CAS [Central Authentication Service] used at RPI for authentication and could be modified to work with most web-enabled authentication services.  In addition, a build is available that uses an internal user database.

### What privileges are available to user who have not been given express administrative access?

Users who are not granted administrative control over any feeds or screens are known as "Basic Users." All Basic Users can submit content to feeds, view content in the system, see which screens are active, and find contact details for members of particular administrator groups.

### I'm a Basic User. When I submit graphics or text to Concerto, does it automatically get displayed live?

Not right away. If you do not have moderator privileges over the feed(s) to which you send content, your submission will enter a moderation queue, where it will either be approved or denied by the people who moderate the feed. If approved, your content will immediately enter the list of content that can appear on screens subscribed to that respective feed.

### Who controls each individual feed?

Each feed is moderated by a group of users. You can easily see which group has moderation over a feed by viewing that feed's page.