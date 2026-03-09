---
title: Remote Feeds
section: Developer Resources
description: Build a JSON endpoint that Concerto polls to populate content automatically.
full_width: true
---

<div class="wrap">
  <div style="padding: 2em 0 1em;">

  <h2>How It Works</h2>

  <p>Remote Feeds let you serve content to Concerto 3 from any URL you control, allowing content to dynamically change and update without requiring manual uploads or moderation.
  The Concerto server polls the URL on a schedule and creates or updates content based on what the endpoint returns.</p>

  <p><strong>Your endpoint must return a JSON array of Content objects.</strong> The URL path is entirely up to you, any publicly accessible URL that returns the correct format will work.</p>

  <p>For example, <a href="https://remotefeed-quotes-demo.concerto-signage.org/feed">https://remotefeed-quotes-demo.concerto-signage.org/feed</a> returns a quote of the day.</p>
  <h3>Details</h3>

  <p>Concerto 3 uses the combination of <code>type</code> + <code>name</code> as a stable identity for each item. When a refresh returns an item matching an existing record's
  <code>type</code> and <code>name</code>, the record is updated in place. If either changes, the old content is removed and a new record is created, so keep <code>type</code> and <code>name</code>
  stable when the content is semantically the same. Consider evergreen titles like "Weather" instead of "Weather - Mar 9, 2026", and opt to put that level of detail into the
  content body itself (since the name is not shown on screens anyways).</p>

  <h2>Schema Reference</h2>

  <p>Remote Feeds implement this OpenAPI spec: <a href="https://github.com/concerto/concerto/blob/main/docs/remote_feed_spec.yaml">https://github.com/concerto/concerto/blob/main/docs/remote_feed_spec.yaml</a>.</p>

  </div>
</div>

<div id="redoc-container" style="max-width:1400px; margin: 0 auto;"></div>
<script src="https://cdn.jsdelivr.net/npm/redoc/bundles/redoc.standalone.js"></script>
<script>
  Redoc.init(
    'https://raw.githubusercontent.com/concerto/concerto/main/docs/remote_feed_spec.yaml',
    {
      schemaDefinitionsTagName: 'Remote Feed Specification',
      hideDownloadButton: true,
      schemaExpansionLevel: 'all',
      theme: {
        spacing: {
          sectionVertical: 10,
        },
        colors: {
          primary: { main: '#006699' },
        },
        sidebar: {
          backgroundColor: '#f8f8f8',
          textColor: '#333333',
          activeTextColor: '#006699',
          width: '260px',
        },
        rightPanel: {
          backgroundColor: '#263238',
          textColor: '#ffffff',
        },
        typography: {
          fontFamily: '"Lucida Grande", Geneva, Arial, Verdana, sans-serif',
          fontSize: '14px',
          lineHeight: '1.6',
          headings: {
            fontFamily: '"Myriad Pro", Verdana, Arial, sans-serif',
            fontWeight: '400',
          },
          code: {
            fontSize: '13px',
            fontFamily: 'monospace',
          },
        },
      },
    },
    document.getElementById('redoc-container')
  );
</script>
