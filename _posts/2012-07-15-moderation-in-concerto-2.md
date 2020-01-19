---
id: 80
title: Moderation in Concerto 2
date: 2012-07-15T20:56:54+00:00
author: brzaik
layout: post
guid: http://www.concerto-signage.org/blog/?p=80
permalink: /blog/2012/07/15/moderation-in-concerto-2/
categories:
  - Concerto 2 Development
---
A key part of using Concerto is moderating content to appear on one or more feeds.  In Concerto 1, we introduced a very simple moderation feature that allowed people with control over one or more feeds to approve or deny submissions to their feeds.  The first version of the Concerto Panel featured a sidebar that always kept a running count of all submissions awaiting moderation.  For Concerto 2, we want to preserve the simplicity of moderation while incorporating it directly into our spiffy new Browse Content interface, which we hope will be a more streamlined way of perusing and managing content than what you saw in Version 1.  Let&#8217;s take a look.

## Browsing content is faster than ever

<div id="attachment_96" class="wp-caption alignnone" style="width: 310px">
  <a href="/assets/blog/2012/07/moderate1.jpg"><img class="size-medium wp-image-96" title="Browse Home" alt="" src="/assets/blog/2012/07/moderate1-300x200.jpg" width="300" height="200" /></a>
  
  <p class="wp-caption-text">
    The front page of Concerto 2, where you can peruse feeds in the network.
  </p>
</div>

The new Browse Content interface combines the visual thumbnails of the Concerto Wall in Version 1 with a fast and fluid AJAX-enhanced navigation to give users a high-fidelity way of looking at content.  Right from the front page you can find a full feed list.  In Concerto 2 we&#8217;re introducing sub-feeds, which allow you to create simple hierarchies of related content categories.  For example, in my local copy of Concerto 2 I have an **Entertainment** feed, with several sub-feeds including **Concerts** and **Comedy Shows**.  Content can be submitted to one or more feeds as in Concerto 1.  So as you see here, on the front page of my local Concerto 2 install I have a listing of feeds and sub-feeds.  I can click on any of these feed titles to jump to that feed&#8217;s browse page.  With JavaScript turned on (though it works fine without it, too!), the page loads via AJAX in an instant.

<div id="attachment_95" class="wp-caption alignnone" style="width: 310px">
  <a href="/assets/blog/2012/07/moderate2.jpg"><img class="size-medium wp-image-95" title="Browse Feed page" alt="" src="/assets/blog/2012/07/moderate2-300x135.jpg" width="300" height="135" /></a>
  
  <p class="wp-caption-text">
    The new Browse Feed page, centered on my Entertainment feed.
  </p>
</div>

Here you see the Entertainment feed with several active submissions.  These have been previously approved to appear on the feed during certain date/time windows.

## And now for the moderating

<div id="attachment_94" class="wp-caption alignnone" style="width: 310px">
  <a href="/assets/blog/2012/07/moderate3.jpg"><img class="size-medium wp-image-94" title="Moderate Listing" alt="" src="/assets/blog/2012/07/moderate3-300x168.jpg" width="300" height="168" /></a>
  
  <p class="wp-caption-text">
    The new Moderate page listing. Note that there&#8217;s a defect with the number of feeds containing pending content that will be fixed shortly.
  </p>
</div>

With the new Browse Content interface in mind, let&#8217;s take a look at how we handle moderation in Concerto 2.  We have a new top menu that appears at the top of the browser window while a user is logged in.  Here you see a big **Moderate** button, which is available in the top menu at all times if you are allowed to moderate one or more feeds.  In Concerto 2 as in the first version, feeds are &#8220;owned&#8221; by groups of users, all of whom have moderation capabilities over those feeds owned by their groups.

The Moderate button will display a count of pending submissions gathered across all of your owned feeds.  If I have nothing to moderate, the count inside the button is zero and it&#8217;s grayed out; otherwise, it&#8217;ll turn red.  When I click on the button, I&#8217;m presented with a list of my feeds containing pending submissions.

<div id="attachment_93" class="wp-caption alignnone" style="width: 310px">
  <a href="/assets/blog/2012/07/moderate4.jpg"><img class="size-medium wp-image-93" title="Moderate from browse feed page" alt="" src="/assets/blog/2012/07/moderate4-300x146.jpg" width="300" height="146" /></a>
  
  <p class="wp-caption-text">
    One way to moderate content &#8211; right from the Browse Feed page!
  </p>
</div>

Now, instead of having a separate moderation view for a feed, it&#8217;s all integrated directly into the browse pages.  Pending submissions appear at the top of a feed&#8217;s browse page, and you can click the the button below each submission to approve or deny the content.  It all happens on one page, which means that you don&#8217;t have to keep clicking back and forth.  However, if you want to see a zoomed-in version of the content, just click on it to view.  We&#8217;ve carried the same Moderate&#8230; button across to this page as well so that you can approve or deny it right from this page as well.

When the content is approved, it&#8217;ll appear in one or lower lists on the feed&#8217;s browse page. And that&#8217;s all there is to it.  As with Concerto 1, you can change the moderation status of content at any time, either from a browse feed page or by clicking on and viewing a single content submission.

<div id="attachment_92" class="wp-caption alignnone" style="width: 310px">
  <a href="/assets/blog/2012/07/moderate5.jpg"><img class="size-medium wp-image-92" title="Moderate from submission show page" alt="" src="/assets/blog/2012/07/moderate5-300x167.jpg" width="300" height="167" /></a>
  
  <p class="wp-caption-text">
    A moderator can also change the moderation status directly from the submission&#8217;s show page.
  </p>
</div>

## Try it out for yourself

Interested in playing around with the moderation interface on your own?  It&#8217;s live at [nightly.concerto-signage.org](http://nightly.concerto-signage.org).  You can also join along with the development at our [Github page](https://github.com/concerto/concerto).  Hit us up in the comments to let us know what you think about it!