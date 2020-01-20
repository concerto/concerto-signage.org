---
layout: help_page
title: Most Recent System Updates
permalink: /help_pages/14
folder: Deploying Concerto
date: 2010-10-03T20:23:00+00:00
---

# Version 1.9.3 (October 3, 2010)

Release 1.9.3 fixed a few bugs in 1.9.x. Fixes include:

1.  Screen JavaScript incorrectly resized HTML content that did not have text in it (i.e images, video, etc) and forced it to float "down" the screen.
2.  Error on the Wall when there are no feeds with content.
3.  LiveCD screens still sent emails when they went offline.
4.  API had hard coded @rpi.edu email addresses.
5.  SQL data file incorrectly referenced a group_id 1 instead of 0.

# Version 1.9.2 (March 17, 2010)

Release 1.9.2 provided small efficiency enhancements to Concerto, increased the accessibility of the Concerto Wall and fixed a few bugs. Fixes include:

1.  More informative Concerto Wall page titles for non-Javascript browsers.
2.  Reduced caching overhead for common paths.
3.  Support for transparent PNG images.
4.  Miniscreen reflects correct month, instead of being one behind.
5.  Better error messages for new users and screens.
6.  More support for Windows-based servers.

# Version 1.9.1 (September 17, 2009)

This incremental update included several bugfixes and under the hood improvements to the speed and stability of Concerto. 1.9.1 also updated the public-release (non-RPI specific code) to include all the features in 1.9\.  Additional fixes include:

1.  Removed and condensed files from 1.9 update.
2.  Updated Concerto Wall to better support Internet Explorer.
3.  Concerto Wall degrades more gracefully when JavaScript is unavailable.
4.  Optimized redirection code when using preferred domain.
5.  Other miscellaneous bugfixes.

# Update 1.9 (September 3, 2009)

Update 1.9 has been in the works since the beginning of the summer and incorporates significant changes which will change the way you interact with Concerto. A lot of work went into these two new features, so please enjoy them!

## A New Greeting For Concerto. A Better Way to Find Things.

Now, when you arrive on the front page of Concerto, you will see an emulation of our screens. It works in a very similar fashion, and will continue rotating through live Concerto content right within your browser window.

## Concerto Wall Puts You in Control

Now you can easily view all content submitted on Concerto, via the Concerto Wall. The Wall allows you to select any public feed you want and displays its respective graphical content in a nice, visual, grid-like view.

Help us welcome the new academic year in with this Concerto update! There's a whole lot more coming. For now, enjoy!

# Version 1.8.3 (September 1, 2009)

Following in the 1.8.x series of updates, 1.8.3 removed some bugs in the software and cleaned up the template selection interface to support a wider-variety of screen & template sizes. API version 009 was added to support Snow Leopard (10.6), this API revisions does NOT include any substantial changes to its usage, only select output cases were adjusted.

1.  Template Exporter: No longer requires CAS login
2.  Template Selector: Image height set based on screen height instead of static #
3.  Template Selector: Templates that aren't perfect matches for a screen exposed under "Other Template" section
4.  System API: tag includes pseudo file-extension to resolve 10.6 compatibility issues
5.  Content Rendering: Removed a serious bug in image rendering manifested by the output of strange headers
6.  Other miscellaneous bugfixes.

# Version 1.8.2 (May 22, 2009)

This update was mainly a bug fix release, catching up on a few small bugs we caught during the spring semester at RPI. In addition, some of the code was cleaned up as we move towards the public release of the code.

1.  Login: Usernames are no longer case-sensitive
2.  Feed Administration: Deleting a feed no longer crashes
3.  System API: API includes tag
4.  System API: User names are encoded better

# Version 1.8.1 (February 3, 2009)

The first update of 2009 includes several bug fixes and steps to streamline specific parts of the web-based Concerto Panel.

## New Calendar for 'Add Content'

The date selection calendar in the 'Add Content' area now looks a little different and highlights today's date for convenience.

## New Template Select in 'Edit Screen'

For screen moderators, the 'Edit Screen' page is more organized, making changing templates a lot easier and more intuitive. Templates with aspect ratios that do not match the selected screen will not be shown.

# Version 1.8 (November 8, 2008)

You're in for a treat. Concerto has become quite a phenomenon at RPI, with an enormous amount of support from the RPI community RPI’s throughout September and October. This update adds some incredibly useful UI enhancements and two key features.

## Introducing the News Feed

You'll find the first major feature added in this release as soon as you log into the Concerto Panel. The News Feed tracks notifications about all major actions and events that are relevant to your user account. You’ll find your News Feed updated when a message you add is denied or approved by a moderator. When a new screen is deployed, you'll hear about it. When you or another user changes the settings of a screen, there will be another message waiting for you. In addition, if a moderator gives you additional feedback about a piece of rejected or approved content, their message to you will be delivered in the News Feed. This really is the hub of activity for your Concerto account.

While viewing the dashboard, you can expand your News Feed to view more items by clicking on the “View More” bar at the bottom of the News Feed box. You can also view the News Feed on your account page (click the “My Account” link in the left sidebar from any page in the Control Panel). Clicking the gray “View All” button will direct you to a series of pages listing out all of the notifications you have received to date. Click the seek buttons in the upper right corner to navigate through your entire history.


## View Your Pending and Rejected Content

Now you can finally take a look at those of your messages that may have been rejected from all feeds. More importantly, you can see all of your messages that are currently sitting in the moderation queue for one or more feeds. Click the “My Account” link in the left sidebar to visit your account page. There will be three tabs shown on your page, if you scroll down a little. There's “Approved,” “Denied,” and “Pending.” Click the tabs to jump between these three sections for content listings.

## Moderation Messages

From now on, when a moderator clicks to Approve or Deny a piece of content, a confirmation window will pop up. For the Approve case, the duration will be listed alongside a box for additional information. For the Deny case, the moderator can select a reason for denying the content. There is also a box for additional information here. Users will see the reasoning and optional messages on their news feeds.

When a moderator denies content, he or she will now be asked for more information.

## Dynamic Text

Concerto now has a new type of data input: dynamic text, which will be extremely useful for those program coordinators looking to post building schedules or other content that should frequently be shown on Concerto screens. This feature only applies to select groups of moderators.

## Full List of Changes:

1.  Dashboard and My Account: The News Feed and its accompanying controls have been added.
2.  System-wide: Dynamic Text has been enabled for select users.
3.  Add Content: The old tabs have been changed to rounded horizontal tabs.
4.  Add Content: When the user clicks the “Add another feed” link, a dialog box will pop up asking the user to confirm his or her intention to add a new feed.
5.  Add Content: A text message has been added when the user hovers the pointer over a feed name in the last select box of the page, which lists out the screens on which the selected feed is currently displayed.
6.  Add Content: The date selector control has been restyled.
7.  Add Content: There is now a 150-character limit to ticker text messages.
8.  Moderate: When a moderator approves or denies a message, a dialog box will pop up with additional options, including a select box for the reason the content was denied.
9.  Moderate: Below the title of a piece of content within its cell, you will see a list of any feeds to which that specific message has been approved.
10.  Browse Feeds: The list of feeds has been reorganized into three blocks: “normal” feeds, “restricted” feeds, and any “private” feeds unique to your particular user group.
11.  Browse Content: The “Active,” “Expired,” and “Declined” content listings are now organized with the same tabs interface that is shown on the Add Content page.
12.  Browse Feed Page: Active screens are now listed for a particular feed on that feed’s browse page.

# Version 1.7 (September 2, 2008)

Concerto’s first update for the 2008-09 school year brings major enhancements to user interface, browser compatibility, and content feeds. We hope that these refreshes make your experience with the Concerto Control Panel even better.

## Feed Descriptions

The Add Content tab is now a little different. When you select one or more feed(s) to which your content will be submitted, you’ll see a handy description about the types of content that belong in that block. Hover your mouse over a feed title and take a look at its description!

Each feed now has a description that gives you examples of what to place in it.


## A Simpler – Yet Just as Powerful – Dashboard

The dashboard you see when you log into Concerto now doesn’t show you a great big list of all of the Concerto displays, until you click the “+” button. Expand and contract the list of details at will!

The dashboard operational status area can now be expanded and contracted.

## Get to Know Your Screens a Little Better

In Concerto 1.7, all physical screens have received updated icons that let you know at a glance if a display is online and showing content, offline, or “asleep.” Most Concerto screens are configured to power off at a particular time of day set by their screen moderators and turn back on at another time every morning. If a screen is asleep, you’ll see the icon update to reflect that power state!

## A Leaner, Meaner Screens Listing

The screen listing page (hit the “Screens” tab at the top of the Concerto Control Panel) is now more compact, more rounded, and overall much more streamlined. Check out the new power state icons for screens at a glance!

The newly redesigned screens listing, showing off sleeping, online, and offline screens.

## UI Reorganization

The Control Panel has been slightly reorganized for maximum efficiency. There’s no longer a redundant “Feeds” tab, just the same great “Browse Content” tab from before. The “My Account” tab has been removed; now, to access your account details, simply click your user icon in your user badge to the left of the screen whenever you’re logged into the Control Panel.

Click this area in the left menu to view your account details. Note that your user icon is likely different.

## Thank You

As Concerto opens a brand new year of classes at RPI, we look forward to your continued (and increasing) submissions. Concerto is only as good as the sum of its parts, and your continued use of the network will only make it better. As always, let us know how you like the system at [concerto@union.rpi.edu](mailto:concerto@union.rpi.edu).

# Version 1.6.2 (July 28, 2008)

Concerto has been patched to fix a bug in which denied content from the moderation queue would still be approved and made active for a moderated feed.