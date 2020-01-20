---
layout: help_page
title: Dynamic Content
permalink: /help_pages/40
folder: Developer Resources
date: 2010-08-20T15:45:00+00:00
---

Concerto's dynamic content support provides a flexible system to consume external content as Concerto content through user-defined processing and formatting.  Currently this feature is interfaceless, requiring the rule array to be edited and serialized before being stored in the dynamic table.  The dynamic content processing system takes data from an external source and converts it into HTML entries in the content table.  This occurs every time the cronjob is executed, updating old entries and expiring pieces of content that are no longer needed.  

Each piece of content prepared through this system can be comprised of 4 parts: header, repeat unit (abbreviated RU), glue, and footer.  The header and footer are applied once to each entry to the content table at the start and end respectively, while the repeat unit and glue can occur multiple times per content entry.  For example, if we were processing a feed with 3 items in it, our content might look like this HEADER RU GLUE RU GLUE RU FOOTER.  

Header - The header is applied once at the beginning of each piece of content that is going to be inserted into Concerto.&nbsp; Typically this may apply some styling, open HTML tags, or display a header message.&nbsp; Examples of a header may include &lt;div style='color:blue;'&gt;&lt;h1&gt;Blue News&lt;/h1&gt;.&nbsp; This is optional. 

Footer - The header is applied once at the beginning of each piece of content that is going to be inserted into Concerto.&nbsp; Opposite of the header, this may close HTML tags, or display a trailing message.&nbsp; Examples of a header may include &lt;p&gt;&lt;i&gt;News from: Generic news&lt;/i&gt;&lt;/p&gt;&lt;/div&gt;.&nbsp; This is optional.

Glue - The glue is applied between each repeat unit.&nbsp; This is commonly used for formatting needs, like inserting a &lt;br &gt;.&nbsp; This is optional.

Repeat Unit - This is the block where most external content will be pulled in to.&nbsp; This can repeat a predefined number of times per content, which will have GLUE placed between them if defined.&nbsp; Following our news example, this might look like &lt;h3&gt;Title&lt;/h3&gt;&lt;p&gt;Body&lt;/p&gt;. 

A result of processing this simplified rule-set would produce something like:<br/>
&lt;div style='color:blue;'&gt;&lt;h1&gt;Blue News&lt;/h1&gt;<br/>
&lt;h3&gt;Title 1&lt;/h3&gt;&lt;p&gt;Body 1&lt;/p&gt;<br/>
&lt;br &gt;<br/>
&lt;h3&gt;Title 2&lt;/h3&gt;&lt;p&gt;Body 2&lt;/p&gt;<br/>
&lt;br &gt;<br/>
&lt;h3&gt;Title 3&lt;/h3&gt;&lt;p&gt;Body 3&lt;/p&gt;<br/>
&lt;p&gt;&lt;i&gt;News from: Generic news&lt;/i&gt;&lt;/p&gt;&lt;/div&gt;<br /><br />

The ruleset array is made up of the following elements:  

items_per_content: This integer value determines how many repeating elements are used to form 1 piece of content.  In the above example, this number would 3 as there are 3 items from a dynamic content source included.  This number must be >= 1.  Default: 3.  

max_items: This integer value determines a maximum number of content entries that will be created in the dynamic feed.  This is typically used to limit the number of content items created when a dynamic source has a large number of entries.  Set to 0, there will be no restriction on the number of content.  Default: 0  

header / footer / glue: Each of these three optional keys contain subarrays containing a template and bailiwick.  i.e $ruleset['header']['template'] and $ruleset['header']['bailiwick'].  The value of templates and bailiwicks are described below.  

repeat: Similar to header, footer, and glue, the repeat key holds an array containing a template and bailiwick.  For XML content, an xpath key is also defined.  

xpath: Set in the repeat array, xpath describes the path in the dynamic content source to the repeating elements.  For most RSS content, this value should be "channel/item".  

-template: A template holds the string to be used.  If no bailiwick is set, this string will be treated as a static string.  Inserted in its appropriate location without any processing.  Static strings (i.e. no bailiwick defined) are commonly used for headers/footer/glue elements where no additional processing is needed.  In the above example, the snippet of the array defining the header would be set via $ruleset['header'] = array('template' =&gt; "&lt;div style='color:blue;'&gt;&lt;h1&gt;Blue News&lt;/h1&gt;") or an alike syntax.&nbsp; If a bailiwick is to process this area, insert %%{number}%% where the dynamically generated values would be inserted.&nbsp; The template for the repeating unit in the above example might look like &lt;h3&gt;%%1%%&lt;/h3&gt;&lt;p&gt;%%2%%&lt;/p&gt;.

-bailiwick: A bailiwick governs a template, making substitutions and applying a set of rules to generate the correct output.  It is a simple array of multiple bailiwicks.  For example, the $ruleset['repeat']['bailiwick'] must be an array of at least one bailiwick.  They are processed in the order in which they exist in the array.  Each transform package (another array) can consist of the following options:  

--type: This value specifies the type of processing to be applied.  Possible values: xml, xml_ns, date, value, striptags.  xml is used to substitute a %%{number}%% instance in a template with a value from the current item.  xml_ns is used for an item stored under an xml namespace.  date is used to substitute current date/time generated by php's date function.  static is used to substitute a static value into a %%{number}%% (I'm not sure why one would use this, but it exists).  

--value:  For type: xml and xml_ns, this contains an xpath from the item to the desired value.  For example the title of an item in an RSS feed would be referenced via 'title' and the description element via 'description'.  For type: date, this contains the PHP friendly date format.  For type: static, this contains the static value to insert.  

--itemnum: Used for the xml and xml_ns processors, this specifies the key for the content extracted via the xpath.  Most of the time this should be 0, to get the first entry it finds.  

--transform:  Transforms are an array of post processing that can be applied to the content generated earlier in a bailiwick (either via xml, xml_ns, date, or static) before being inserted into the HTML content being prepared.  

---type: This value specifies the type of second level processing to be applied.  Possible values: preg, date, striptags.  preg runs a regular expression on the string, date evaluates the string as a date and converts it to a specified format, striptags runs PHP's striptags function to remove HTML tags.  

---value: For type: preg, this contains an array with 3 options: limit, pattern, and replacement.  These three keys specify the maximum number of replacements to make, the pattern to search for, and the desired replacement accordingly.  For type: date, this holds the desired php date format.  For type: striptags, this can hold a string describing the allowed tags.  

--maxchar: An optional integer to limit the length of the processed entry.  Commonly used to truncate long stories.  

duration: An integer describing the desired length of the content, in milliseconds.  Default: 14000 (aka 14 seconds)  

type_id: An integer value corresponding the location type the content belongs on.  Default: 1 (HTML Text)  

mime_type: A string containing the desired mime-type for the content.  Default: text/html  

start_time_str & end_time_str: String values describing the start and end time for the content.  These are converted into timestamps by strtotime.  Default: "midnight" and "midnight +1 day" respectively.