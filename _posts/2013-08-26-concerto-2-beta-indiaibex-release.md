---
id: 197
title: 'Concerto 2 Beta &#8211; IndiaIbex Release'
date: 2013-08-26T22:43:18+00:00
author: bamnet
layout: post
guid: http://www.concerto-signage.org/blog/?p=197
permalink: /blog/2013/08/26/concerto-2-beta-indiaibex-release/
categories:
  - Uncategorized
---
Hi Everyone!  I&#8217;m usually excited when we&#8217;re announcing a new version of Concerto, but this version has me extra excited.  We&#8217;ve managed to pack more bug fixes, improvements, and features into our 0.7.0.IndiaIbex release than the previous couple releases we&#8217;ve put out.  If you&#8217;ve been ignoring these updates, or Concerto 2 in general, this is definitely the release to check out.  To get started quickly, you should download the latest concerto_server VM [here](http://dl.concerto-signage.org/) and fire it up to follow along.

<img class="alignright size-medium wp-image-198" alt="0.7.0.indiaibex" src="/assets/blog/2013/08/Screen-Shot-2013-08-26-at-10.41.31-PM-300x111.png" width="300" height="111" /> 

This release added some much needed security for screens with the addition of screen authentication.  Screen security, something that Concerto 1 lacked, is something we (and by we I mean Mike) spent a lot of time thinking about for Concerto 2.  I couldn&#8217;t do it justice in this short form, so we&#8217;ll dive into the details in a full post after we&#8217;ve tidied up the last few bugs.

We also added support for Capistrano-based deployments if you&#8217;re into that sorta thing.  Our external error-reporting has been fixed in this release so we should get those bug reports automatically streaming in if you&#8217;ve check the box during setup.  If you&#8217;ve tried to visit that settings page and gotten an error, we&#8217;ve fixed that as well.  The config / settings as a whole should be a lot easier to navigate as well.  The VM is properly writing logs now so you can see what&#8217;s going on in logs/production.log and the dynamic content updaters are running in the background like they should be.  Behind the scenes this release also includes some improvements to our JSON / XML API that we&#8217;ll be including in V2, it&#8217;s not quite ready for mainstream yet but we&#8217;re making progress.

You can find a full diff of the work we did [here](https://github.com/concerto/concerto/compare/0.6.0.hotelhummingbird...0.7.0.indiaibex).  Our [installation instructions](https://github.com/concerto/concerto/wiki/Installing-Concerto-2) should be up to date, but you should really just download the VM and run it for a fast start.  Alternatively, you can check out our instance running this release @ <http://nightly.concerto-signage.org>.  Do let us know what bugs you run into or features you&#8217;d like by writing to our [Google Group](http://groups.google.com/group/concerto-digital-signage) or opening [Github Issues](https://github.com/concerto/concerto/issues).