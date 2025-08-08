<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/></title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <style>
          body {
            font-family: 'Open Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            line-height: 1.6;
            color: #293241;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f8fafc;
          }
          .header {
            background: linear-gradient(135deg, #2B6DA3, #A8CCED);
            color: white;
            padding: 2rem;
            border-radius: 12px;
            margin-bottom: 2rem;
            text-align: center;
          }
          h1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 2.5rem;
            margin: 0 0 0.5rem 0;
            font-weight: 700;
          }
          .description {
            font-size: 1.1rem;
            opacity: 0.9;
            margin: 0;
          }
          .info-box {
            background: white;
            border: 2px solid #2A9D8F;
            border-radius: 8px;
            padding: 1.5rem;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
          }
          .info-box h2 {
            color: #2A9D8F;
            margin-top: 0;
            font-size: 1.3rem;
          }
          .info-box p {
            margin: 0.5rem 0;
          }
          .feed-link {
            background-color: #2A9D8F;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 6px;
            font-weight: 600;
            display: inline-block;
            margin-top: 1rem;
          }
          .feed-link:hover {
            background-color: #238276;
          }
          .articles {
            background: white;
            border-radius: 8px;
            padding: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
          }
          .articles h2 {
            color: #2B6DA3;
            border-bottom: 3px solid #A8CCED;
            padding-bottom: 0.5rem;
            margin-bottom: 1.5rem;
          }
          .article {
            border-bottom: 1px solid #e5e7eb;
            padding: 1.5rem 0;
          }
          .article:last-child {
            border-bottom: none;
          }
          .article h3 {
            margin: 0 0 0.5rem 0;
            font-size: 1.3rem;
          }
          .article h3 a {
            color: #2B6DA3;
            text-decoration: none;
          }
          .article h3 a:hover {
            color: #1e4a6f;
            text-decoration: underline;
          }
          .article-meta {
            color: #6b7280;
            font-size: 0.9rem;
            margin-bottom: 0.75rem;
          }
          .article-description {
            color: #374151;
            line-height: 1.7;
          }
          .rss-icon {
            display: inline-block;
            width: 16px;
            height: 16px;
            background-color: #ff6600;
            border-radius: 2px;
            margin-right: 6px;
            vertical-align: middle;
          }
        </style>
      </head>
      <body>
        <div class="header">
          <h1><xsl:value-of select="rss/channel/title"/></h1>
          <p class="description"><xsl:value-of select="rss/channel/description"/></p>
        </div>
        
        <div class="info-box">
          <h2>📡 RSS Feed Information</h2>
          <p>This is an RSS feed for Piano Fitness articles. RSS feeds allow you to stay up-to-date with new content using a feed reader.</p>
          <p><strong>Feed URL:</strong> <code><xsl:value-of select="rss/channel/link"/>rss.xml</code></p>
          <p>Copy this URL into your favorite RSS reader to subscribe to Piano Fitness articles.</p>
          <a href="https://feedly.com/i/discover/sources/search/feed/{rss/channel/link}rss.xml" class="feed-link" target="_blank">
            <span class="rss-icon"></span>Add to Feedly
          </a>
        </div>

        <div class="articles">
          <h2>Recent Articles (<xsl:value-of select="count(rss/channel/item)"/> articles)</h2>
          
          <xsl:for-each select="rss/channel/item">
            <div class="article">
              <h3>
                <a href="{link}" target="_blank">
                  <xsl:value-of select="title"/>
                </a>
              </h3>
              <div class="article-meta">
                <xsl:if test="author">
                  By <xsl:value-of select="author"/> • 
                </xsl:if>
                <xsl:value-of select="pubDate"/>
              </div>
              <xsl:if test="description">
                <div class="article-description">
                  <xsl:value-of select="description"/>
                </div>
              </xsl:if>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>