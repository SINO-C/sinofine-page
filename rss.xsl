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
			<style>
				:root {
				--body-margin: 1rem;
				--chinese-fonts: "Source Han Serif SC", "Noto Serif CJK SC";
				--italic-chinese-fonts: STKaiTi,"楷体", KaiTi, SimKai;
				--english-fonts: "CMU Concrete", "Dejavu Serif", "Iosevka Comfy Duo", "Iosevka Comfy Motion Duo", "Anonymous Pro", "Concrete";
				--fonts: var(--english-fonts), var(--chinese-fonts), serif;
				--math-fonts: "Concrete Math", "Dejavu Math TeX Gyre", "Euler Math", "Concrete-Math", math;
				--page-width: 768px;
				}
				body {
				color: #222;
				font-family: var(--fonts);
				font-weight: 500;
				line-height: 1.5;
				margin: var(--body-margin) auto;
				max-width: var(--page-width);
				min-height: calc(100vh - 2 * var(--body-margin));
				display: flex;
				flex-direction: column;
				}
				@media screen and (max-width: 820px){
				body{
				h1, h2, h3, h4, h5, h6 {
				}
        margin: var(--body-margin) 2em;
        main {
        text-align: left;
        }
				}
				}
				header {
				border-bottom: 2px dashed #222;
				margin-bottom: 1rem;
				display: flex;
				h1 {
				flex: 1;
        display: inline-block;
				align-content: center;
				}
				nav {
        display: inline-block;
				align-content: center;
        li {
        display: inline-block;
        margin: 0 .5em;
        }
				}
				}
				main{
				text-align: justify;
				text-wrap: pretty;
				word-break: auto-phrase;
				p {
				text-align-last: left;
				}
				.title-head, time {
        display: block;
        text-align: center;
				}
				p > .post-date {
				display: inline-flex;
				font-size: small;
				width: 7em;
				padding: 0 .2em;
				}
				.post-date::before {
				content: "[";
				flex: 1;
				}
				.post-date::after {
				content: "]";
				flex: 1;
				text-align-last: right;
				}
				}
				footer {
				/* border-top: 1px solid #222; */
				margin-top: 1rem;
				}

				a {
				color: #555;
				text-decoration: none;
				}

				math {
				font-family: var(--math-fonts);
				max-width: 100%;
				overflow-x: auto;
				overflow-y: hidden;
				}
				div.abstract {
				margin: 2em 2em 2em 2em;
				text-align: left;
				font-size: 85%;
				}
				div.abstract-title {
				font-weight: bold;
				text-align: center;
				padding: 0;
				margin-bottom: 0.5em;
				}
				h1, h2, h3, h4, h5, h6 {
				/* margin-top: 1.4em; */
				font-size: 1.5em;
				&::before {
        display: inline-block;
        color: #aaa;
        width: 3em;
        margin-left: -3em;
        text-align: end;
				}
				}
				h5, h6 {
				font-size: 1em;
				font-style: italic;
				}
				h6 {
				font-weight: normal;
				}
				h2::before {content:"* ";}
				h3::before {content:"** ";}
				h4::before {content:"*** ";}
				h5::before {content:"**** ";}
				h6::before {content:"***** ";}
				.friends {
				display: flex;
				flex-wrap: wrap;
				.friend-card {
				width: calc(var(--page-width) / 2 - 2em);
				margin: 1em;
				display: inline-flex;
				border-left: 0px #069dff solid;
				transition: border 0.1s ease-in;
				box-sizing: border-box;
				img {
	      height: fit-content;
	      object-fit: cover;
	      aspect-ratio: 1;
				}	
				.friend-info {
	      padding-left: .5em;
				height: 100px;
	      h3{
		    font-size: 1em;
		    line-height: 1;
		    &::before {content: none;}
	      }
				}
				&:hover {
	      border-left-width: 5px;
				}
				}
				}
				em {
				font-family: var(--english-fonts), var(--italic-chinese-fonts), monospace;
				font-synthesis: none;
				}
				.table-container, .displaymath-container, .sourceCode {
				max-width: 100%;
				overflow-x: auto;
				overflow-y: hidden;
				}
				div.csl-entry {
				clear: both;
				}
				.hanging-indent div.csl-entry {
				margin-left:2em;
				text-indent:-2em;
				}
				div.csl-left-margin {
				min-width:2em;
				float:left;
				}
				div.csl-right-inline {
				margin-left:2em;
				padding-left:1em;
				}
				div.csl-indent {
				margin-left: 2em;
				}

				@font-face {
				font-family: Concrete;
				font-style: normal;
				font-weight: 400;
				src: url("/fonts/cmunorm.woff") format("woff");
				}
				@font-face {
				font-family: Concrete;
				font-style: normal;
				font-weight: 700;
				src: url("/fonts/cmunobx.woff") format("woff");
				}
				@font-face {
				font-family: Concrete;
				font-style: italic;
				font-weight: 400;
				src: url("/fonts/cmunoti.woff") format("woff");
				}
				@font-face {
				font-family: Concrete;
				font-style: italic;
				font-weight: 700;
				src: url("/fonts/cmunobi.woff") format("woff");
				}
				@font-face {
				font-family: Concrete-Math;
				src: url("/fonts/Concrete-Math.woff") format("woff");
				}
			</style>
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
