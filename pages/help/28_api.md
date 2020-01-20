---
layout: help_page
title: API Documentation
permalink: /help_pages/28
folder: Developer Resources
date: 2011-09-25T14:57:00+00:00
---

The Concerto 1.x API is accessible via http://_concerto_installation_root_/content/render/, where _concerto_installation_root_ is the root address to your Concerto installation. For example, the [RPI](http://concerto.rpi.edu) API URL would be http://concerto.rpi.edu/content/render/. Send any of the following parameters via GET or POST format to interact with the system. Feel free to mix and match to create your own Concerto looking glass! Underlined acceptable values indicate the default selections. The only required parameter is select_id (except for system queries).

_Disclaimer: This API specification is subject to change quickly and without warning, though we try very hard not to break anything._

# Download the PDF

A complete PDF of everything that's on this page may be downloaded [here](http://docs.studentsenate.rpi.edu/documents/77/revisions/current/download).

# API Call Parameter Details

<table border="0" cellpadding="0" cellspacing="0" class="admin">

<tbody>

<tr>

<th>Parameter  
* Required</th>

<th>Default</th>

<th>Options</th>

</tr>

<tr>

<td>select</td>

<td>feed</td>

<td>content, feed, user, system</td>

</tr>

<tr>

<td>select_id*</td>

<td>_null_</td>

<td>_integer_, _string_</td>

</tr>

<tr>

<td>format</td>

<td>rss</td>

<td>raw, html, rawhtml, rss, json</td>

</tr>

<tr>

<td>orderby</td>

<td>id</td>

<td>id, rand, type_id, mime_type, submitted, start_time, end_time, user_id</td>

</tr>

<tr>

<td>range</td>

<td>live</td>

<td>live, future, past, all</td>

</tr>

<tr>

<td>count</td>

<td>_null_</td>

<td>_integer_</td>

</tr>

<tr>

<td>type</td>

<td>_null_</td>

<td>_string_</td>

</tr>

<tr>

<td>width</td>

<td>_null_</td>

<td>_integer_</td>

</tr>

<tr>

<td>height</td>

<td>_null_</td>

<td>_integer_</td>

</tr>

<tr>

<td>callback</td>

<td>_null_</td>

<td>_string_</td>

</tr>

<tr>

<td>api</td>

<td>_null_</td>

<td>_integer_</td>

</tr>

</tbody>

</table>

## Parameter: select

### Acceptable Values: content, <span style="text-decoration: underline;">feed</span>, user, system

Select controls the grouping by which content returned from the system.

*   **content**: Selects one piece of content matching select_id. All other selection criterial are ignored.
*   **feed**: Select all the content on approved on the feed with the id select_id. Criteria are used to limit content returned.
*   **user**: Select all the content submitted to the system by the user with the username select_id that has been approved on at least one feed.
*   **system**: Special query used to access system data. This is the only case a select_id is not required. See examples.

## Parameter: select_id

### _integer_, _string_

**REQUIRED.** Specifies the value to satisfied for the type of selection needed.

*   **_integer_**: The id of a feed or piece of content to be selected based on the select parameter
*   **_string_**: The username of a user whoÊ¼s content should be selected.

## Parameter: format

### raw, html, rawhtml, <span style="text-decoration: underline;">rss</span>, json

Controls the output format of the result set.

*   **raw**: For text content, returns the text of each entry followed by a newline/ For image based content, this function will render the image, returning image data to the browser.
*   **html**: Output marked up html (wrapped in divs) with the content text or an image tag referencing the source of the image.
*   **rawhtml**: Output simple html with the content text or image tags. No divs are used to wrap the output.
*   **rss**: Output an rss feed containing information about all the content selected, includes media rss and dcterms.
*   **json**: Output JSON data containing information about all the content selected.

## Parameter: orderby

### <span style="text-decoration: underline;">id</span>, rand, type_id, mime_type, submitted, start_time, end_time, user_id

If more than one item is being returned, control the ordering of the content items.

*   **id**: Sort content by the content item's unique id.
*   **rand**: Randomly order the content.
*   **type_id**: Sort content by the type of it in the system, such as graphics, ticker text, html dynamic text, etc.
*   **mime_type**: Sort content based on the mime type of the content item, such as image/jpeg, image/png, image/gif, text/plain, text/html.
*   **submitted**: Sort content by the date it was submitted to the system.
*   **start_time**: Sort content by the time it should start being displayed.
*   **end_time**: Sort content by the time it should stop being displayed.
*   **user_id**: Sort content by the user_id of the person who submitted it.

## Parameter: range

### <span style="text-decoration: underline;">live</span>, future, past, all

Control the date range used when selecting content.

*   **live**: Content currently being shown on the system; start time < current time < end time
*   **future**: Content not currently being shown, but to be shown later: start time > current time
*   **past**:Content not currently being shown, but has been previously shown; end time < current time
*   **all**: Select content regardless of its start and end time.

## Parameter: count

### _integer_

Used to limit the content returned from the system to a speciï¬c amount.

*   **_integer_**: Return a maximum of _integer_ pieces of content.

## Parameter: type

### _string_

Control the nature of content returned from the system, based on the areas it would be displayed on a screen.

*   **_string_**: Select only content that belongs in a ï¬eld described by _string_. Types deï¬ned in the system can be identiï¬ed with a select = system query.

## Parameter: width

### _integer_

If returning image content, limit the width to a maximum.

*   **_integer_**: If the content is an image, the max width of the content will be _integer_. Content will be scaled proportionally, but resulting width will not be larger than speciï¬ed.

## Parameter: height

### _integer_

See parameter: width.

## Parameter: callback

### _string_

For json queries, the callback parameter will wrap the JSON output with a JSON-P style callback.

*   **_string_**:The name of the function the output should be wrapped in. Some libraries (like jQuery) would prefer to ï¬ll this parameter in automatically if located at the end of your query string.

## Parameter: api

### _integer_

Used to control the version of the API used to execute the query.

*   **_integer_**:The api matching _integer_ will be used to execute the query if it exists. If not, the default API will be used. 000 will return the parameters you are passing in to the API for debugging/veriï¬cation.

# Usage Examples

View examples of using the API at the full PDF document, which you can view [here](http://documents.studentsenate.rpi.edu/documents/current/77).