<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
  <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head>
      <title>
        RSS Feed | <xsl:value-of select="/rss/channel/title"/>
      </title>
      <link rel="stylesheet" href="/css/main.css"/>
    </head>
    <body>
			  <header>
    <h1>小猫</h1>
  <nav>
    <ul>
    <li>
      <a href="/">Home</a>
    </li>
    <li>
      <a aria-current="page" class="active" href="/posts/">Posts</a>
    </li>
    <li>
      <a href="https://notes.sinofine.me/">Notes</a>
    </li>
    <li>
      <a href="/atom.xml">Feed</a>
    </li>
    <li>
      <a href="/about/">About</a>
    </li>
    <li>
      <a href="/friends/">Friends</a>
    </li>
    </ul>
  </nav>

  </header>
			<main>
      <h1>Recent blog posts</h1>
      <xsl:for-each select="/rss/channel/item">
				<p>
					<span class="post-date"><xsl:value-of select="substring(pubDate,6,11)" /></span>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="link"/>
          </xsl:attribute>
          <xsl:value-of select="title"/>
        </a></p>
      </xsl:for-each>
			</main>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
