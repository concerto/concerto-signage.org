---
layout: help_page
title: Importing RSS & XML Feeds
permalink: /help_pages/39
folder: Developer Resources
date: 2009-11-16T16:09:00+00:00
---

Concerto can automatically generate and update content items from an RSS/XML feed for consumption by screens in the system.  Currently, this process does not have an interface exposed in the Admin panel.  You'll need access to the database (phpMyAdmin works well) to perform this setup.

Outside content sources are imported in dynamic feeds in Concerto.  Dynamic feeds update automatically when the cronjob runs ensuring the content is always up to date.

## Setup the destination feed

1.  Login as an administrator
2.  Navigate to the Browse Content page and click the New Feed button up top.
3.  Enter an appropriate name & description for the feed.  Select the "System Adminstrator" group for the feed owner.  Set the feed type to "Restricted" so no one can use the feed while its being setup.

## Database Work

1.  Login to your database.   We use phpMyAdmin, but any database management tool that can add/edit records should work.
2.  Navigate to the **Dynamic** table and prepare to **INSERT** a new record.
3.  Set the **type** field to **1**, the **path** field to the **URL** of your RSS feed, enter a ruleset into the **rules** field (see below), and set the **update_interval** to the minumun number of seconds between an update.  For an urgent feed you can use 0 seconds to always update, but most RSS news sources can wait a few minutes.  We use 600 seconds (10 minutes) for many of our feeds.
4.  Save the record, and note the **id** it was assigned in the **dynamic** table.
5.  Navigate to the **Feed** and browse to find the record associated with the feed you setup in the first part of the guide.
6.  Edit/UPDATE the record for the destination feed, changing the **type** to **1** and the **dynamic_id** to the id of the entry added to the dynamic table _(step 4)_.
7.  You're all set, navigate to http://<your concerto install>/common/scripts/cron.php to manually update the system or wait for the next cronjob run.

## Rulesets

The dynamic table uses the rule field to store information that tells the system how to process the RSS/XML input feed.  These rules control the HTML formatting the content is presented in and what operations are conducted on the source content (aggregation, truncation, regex, etc). This data is stored as a serialized PHP array.  Until full documentation for the rulesets is prepared, there are a few sample rulesets you can try.  Do not directly manipulate the content of these rules, unserialize them into the PHP array, make your changes, and re-serialize if needed.

### Show the 5 headlines per content for an RSS feed

Path: http://arstechnica.com/index.rssx

Rule:  
<textarea class="ru" cols="50" rows="8">a:5:{s:17:"items_per_content";i:5;s:9:"max_items";i:0;s:6:"header";a:1:{s:8:"template";s:31:"<h1>Ars Technica Headlines</h1>";}s:4:"glue";a:1:{s:8:"template";s:2:" ";}s:6:"repeat";a:3:{s:5:"xpath";s:12:"channel/item";s:8:"template";s:12:"<p>%%1%%</p>";s:9:"bailiwick";a:1:{i:0;a:3:{s:2:"id";i:1;s:4:"type";s:3:"xml";s:5:"value";s:5:"title";}}}}</textarea>

### Show 1 story per content for an RSS feed

Path: http://rss.news.yahoo.com/rss/topstories

Rule:  
<textarea class="ru" cols="50" rows="8">a:5:{s:17:"items_per_content";i:1;s:9:"max_items";i:0;s:6:"header";a:1:{s:8:"template";s:20:"<h1>Yahoo! News</h1>";}s:4:"glue";a:1:{s:8:"template";s:2:" ";}s:6:"repeat";a:3:{s:5:"xpath";s:12:"channel/item";s:8:"template";s:28:"<h2>%%1%%</h2><h3>%%2%%</h3>";s:9:"bailiwick";a:2:{i:0;a:4:{s:2:"id";i:1;s:4:"type";s:3:"xml";s:5:"value";s:5:"title";s:9:"transform";a:2:{i:0;a:2:{s:4:"type";s:4:"preg";s:5:"value";a:2:{s:7:"pattern";s:9:"/\s\s+/is";s:11:"replacement";s:1:" ";}}i:1;a:2:{s:4:"type";s:4:"preg";s:5:"value";a:2:{s:7:"pattern";s:12:"/[\n|\r]*/is";s:11:"replacement";s:0:"";}}}}i:1;a:4:{s:2:"id";i:2;s:4:"type";s:3:"xml";s:5:"value";s:11:"description";s:9:"transform";a:1:{i:0;a:1:{s:4:"type";s:9:"striptags";}}}}}}</textarea>

### Display the Weather:

Path: http://weather.yahooapis.com/forecastrss?p=12180

Rule:  
<textarea class="ru" cols="50" rows="8">a:4:{s:17:"items_per_content";i:1;s:9:"max_items";i:0;s:6:"header";a:1:{s:8:"template";s:21:"<h1>Troy Weather</h1>";}s:6:"repeat";a:3:{s:5:"xpath";s:12:"channel/item";s:8:"template";s:24:"<i>%%1%%</i><p>%%2%%</p>";s:9:"bailiwick";a:2:{i:0;a:3:{s:2:"id";i:1;s:4:"type";s:3:"xml";s:5:"value";s:5:"title";}i:1;a:4:{s:2:"id";i:2;s:4:"type";s:3:"xml";s:5:"value";s:11:"description";s:9:"transform";a:1:{i:0;a:2:{s:4:"type";s:9:"striptags";s:5:"value";s:16:"<img>, <b>, <br>";}}}}}}</textarea>