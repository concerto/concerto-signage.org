---
layout: help_page
title: Controlling Screen Content
permalink: /help_pages/19
folder: Using Concerto
date: 2009-07-16T19:19:00+00:00
---

Concerto is a distributed digital signage system that allows organizations to directly manage physical display hardware that they may purchase or connect to the Concerto network. Groups of individual Concerto users may be granted screen control privileges for specific screens in the system that they may own. These users, known as **screen moderators**, can subscribe each screen they control to a different selection of content feeds. This allows each individual Concerto display to potentially show a different set of messages simultaneously.

Terms Mentioned in this Article:

*   **Screen**: A physical display registered in the Concerto network, which would likely take the form of a flat panel television.
*   **Screen Moderator**: A Concerto user belonging to a user group that has been given the express privilege of controlling the content and settings of a particular screen in the system.
*   **Field**: A location on a screen's template designated to display Concerto content in a particular format, such as graphics, ticker text, or HTML calendar listings.
*   **Template**: A graphical layout displayed on a screen that is composed of a series of fields. These can be easily changed by screen moderators.
*   **Feed**: A subject-based category for content in Concerto (i.e. "Student Union" or "Union Bookstore"). Anybody with an RCS ID and password can submit content to most feeds; each feed is moderated by a particular group of users with special account privileges.

For this tutorial, we'll assume that you have moderation control over at least one Concerto screen in the network.

The first step to modifying screen details is to click on the Screens tab in the [Concerto Control Panel](http://signage.rpi.edu/admin) once you've logged in with a valid RCS ID and password. This will bring you to a visual list of all the screens currently registered with the Concerto network at RPI. Find your screen in the list and click on its box. This will take you to the main details page for this screen.

This page lists out some important technical information about the screen and the computer connected to it, such as the computer's IP address, MAC address, and the screen resolution being output to the physical display. In addition, there will be a status indicator, which signifies whether the screen is Online or Offline. Concerto constantly communicates with each screen via the Internet and will report when the most recent successful communication was made between the main server and the screen's Small Form Factor Computer (SFFC). You will also be able to see a listing of each of the fields appearing on this screen and the individual feeds the screen will pull from for each field. A field is simply a location on the screen contains Concerto content in particular formats, such as graphics or text.

# Basic Screen Settings

You can edit the settings for this screen by clicking the Edit Screen button at the top of the details page. This will bring you to a page that will allow you to modify important details about this screen:

*   The text name of the screen
*   A label describing where the screen is physically located on campus
*   The graphical template displayed on the screen
*   Power settings for the screen, such as when the screen turns on and off

The text fields should be self-explanatory, but one special area of particular importance is the template selector. A list of all graphical templates available in the system will be shown with visual previews of how each template looks. Each template will contain a different arrangement of fields, and they represent a variety of different screen resolutions. Each template's text name to the right of its preview should include an aspect ratio ("16x9") or a resolution ("1280x800"). It is important to try to match your choice of template to the native resolution of your screen and your desires for which types of content you might want to feature on the screen.

For example, some template may have designated fields for graphics, ticker text, the time and date, and text. What this means is that a screen using this template will be able to show a graphical announcement, a ticker message, the current time and date, and HTML text content, such as the Institute Events Calendar and building schedules for the Mueller Center and other facilities on campus. Other templates may only have spaces for graphics, ticker text, and the time and date. In fact, a template may be available with just a large space for graphics!

**NOTE: You can see the current resolution of your screen by viewing its details page as described above!**

When you find the template you wish to use, simply activate the radio button next to its preview. When you're all finished changing these basic screen options, scroll down to the bottom of the page and click the Save Details button.

# Managing Screen Subscriptions

The real meat of the screen control interface can be found by clicking the Manage Subscriptions button on the main details page of the screen. The page you'll see now will show you a visual preview of your screen's template broken down into boxes. Each box represents a particular field in this template; you'll see the text name of the field in the middle of the box within the screen preview. Below the screen preview, you'll see a set of panels with feed selection options. Each panel shown corresponds to one of the fields shown in the screen preview. In the example shown below, there is a time field, one for ticker text, one for graphics, and one for text.

In order to subscribe a particular field on your screen to one or more content feeds, look toward the bottom of the field box for a pull down list of all feeds available in the system. Select a feed, then hit the Add button to tentatively add it to that field. You can do this for as many or as few feeds as you wish to add.

**NOTE: Feeds can contain multiple types of content, such as graphics, ticker text, and HTML text content. If a field pulls from a particular feed, it will only pull the types of content that can fit into it. For instance, if the Student Union feed only contains active graphic content, a ticker text field will not pull any content from it until ticker content becomes active in the Student Union feed.**

**NOTE: Your feed subscriptions have not yet been saved until you scroll to the bottom of the subscriptions page and click the Save button! This will save the changes you've made to the screen since the last save. Make sure you do not navigate away from this page until you have saved your changes.**