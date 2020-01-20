---
layout: help_page
title: Template Installation
permalink: /help_pages/38
folder: Deploying Concerto
date: 2011-09-21T17:04:00+00:00
---

# Template Importer

Concerto comes with a template importer, located in the Admin Panel tab to help system admins import new templates into the system.  Uploading a new template into the system requires 2 files, an XML template descriptor and the template background image.

If you're looking to import a template into your Concerto installation we have a few available under a [Creative Commons Attribution-Noncommercial 3.0 United States License](http://creativecommons.org/licenses/by-nc/3.0/us/):

*   [Blue Swoosh Neo](http://downloads.concerto-signage.org/templates/BlueSwooshNeo_16x9.zip) [[preview]](http://downloads.concerto-signage.org/templates/previews/BlueSwooshNeo_16x9_preview.jpg)
*   [Gray Swoosh](http://downloads.concerto-signage.org/templates/GraySwoosh_16x9.zip) [[preview]](http://downloads.concerto-signage.org/templates/previews/GraySwoosh_16x9_preview.jpg)
*   [Ribbon](http://downloads.concerto-signage.org/templates/Ribbon_16x9.zip) [[preview]](http://downloads.concerto-signage.org/templates/previews/Ribbon_16x9_preview.jpg)
*   [Ruby](http://downloads.concerto-signage.org/templates/Ruby_16x9.zip) [[preview]](http://downloads.concerto-signage.org/templates/previews/Ruby_16x9_preview.jpg)
*   [Simplicity](http://downloads.concerto-signage.org/templates/Simplicity.zip) [[preview]](http://downloads.concerto-signage.org/templates/previews/Simplicity_preview.jpg)
*   [Stoic](http://downloads.concerto-signage.org/templates/Stoic_16x9.zip) [[preview]](http://downloads.concerto-signage.org/templates/previews/Stoic_16x9_preview.jpg)
*   [Waves](http://downloads.concerto-signage.org/templates/Waves_16x9.zip) [[preview]](http://downloads.concerto-signage.org/templates/previews/Waves_16x9_preview.jpg)

[![Creative Commons License](http://i.creativecommons.org/l/by-nc/3.0/us/88x31.png)](http://creativecommons.org/licenses/by-nc/3.0/us/)

## Template Descriptor

The template descriptor file specifies the template name, width, height, author and fields available. All template descriptors are required to have the following properties: name, width, height.  The height and width field describe the height and width of the template, and should match the size of the image file.   Templates must also have at least on field defined.  Fields must have the following properties: name, type, style, left, top, width, and height.  The type properties describes the type of content that can be displayed in the field, most commonly Text, Ticker, or HTML.  Fields use the left, top, width, and height properties to describe their location on the screen.  The top, left, width, and height properties can be pixel values (integers) or percentages (decimals).  Here's an example of a template descriptor:
<p>&lt;template&gt;</p>
<p>&nbsp; &lt;name&gt;Blue Swoosh Neo&lt;/name&gt;</p>
<p>&nbsp; &lt;width&gt;1920&lt;/width&gt;</p>
<p>&nbsp; &lt;height&gt;1080&lt;/height&gt;</p>
<p>&nbsp; &lt;field&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;name&gt;Time and Date&lt;/name&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;type&gt;Text&lt;/type&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;style&gt;font-weight:bold !important; letter-spacing:.12em !important;&lt;/style&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;left&gt;0.024&lt;/left&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;top&gt;0.885&lt;/top&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;width&gt;0.156&lt;/width&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;height&gt;0.089&lt;/height&gt;</p>
<p>&nbsp; &lt;/field&gt;</p>
<p>&nbsp; &lt;field&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;name&gt;Graphics&lt;/name&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;type&gt;Graphics&lt;/type&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;style&gt;border: solid 2px #ccc;&lt;/style&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;left&gt;0.025&lt;/left&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;top&gt;0.026&lt;/top&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;width&gt;0.567&lt;/width&gt;</p>
<p>&nbsp;&nbsp;&nbsp; &lt;height&gt;0.77&lt;/height&gt;</p>
<p>&nbsp; &lt;/field&gt;</p>
<p>&lt;/template&gt;</p>