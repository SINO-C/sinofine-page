<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="zh-CN">
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>订阅更新 | <xsl:value-of select="atom:feed/atom:title"/></title>
        <style>
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

          :root {
            --ink: #20211f;
            --muted: #72736d;
            --line: #dedfd8;
            --accent: #b4472d;
            --serif: Concrete, "Source Han Serif SC", "Noto Serif CJK SC", serif;
            --sans: Inter, "Helvetica Neue", Arial, sans-serif;
          }

          * {
            box-sizing: border-box;
          }

          body {
            color: var(--ink);
            font-family: var(--serif);
            font-size: 17px;
            line-height: 1.62;
            margin: 0 auto;
            max-width: 1160px;
            min-height: 100vh;
            padding: 0 3rem;
          }

          header {
            align-items: center;
            border-bottom: 1px solid var(--line);
            display: flex;
            justify-content: space-between;
            min-height: 92px;
          }

          .brand {
            color: var(--ink);
            font-size: 1.65rem;
            font-weight: 700;
            letter-spacing: -0.06em;
            text-decoration: none;
          }

          nav {
            display: flex;
            font-family: var(--sans);
            font-size: 0.7rem;
            font-weight: 600;
            gap: 1.7rem;
            letter-spacing: 0.1em;
            text-transform: uppercase;
          }

          nav a {
            color: var(--muted);
            text-decoration: none;
          }

          nav a.active,
          nav a:hover {
            color: var(--accent);
          }

          main {
            display: grid;
            grid-template-columns: minmax(260px, 0.72fr) minmax(0, 1.28fr);
            min-height: calc(100vh - 174px);
          }

          .feed-note {
            border-right: 1px solid var(--line);
            padding: 5rem 4.5rem 5rem 0;
          }

          .eyebrow {
            color: var(--accent);
            font-family: var(--sans);
            font-size: 0.65rem;
            font-weight: 700;
            letter-spacing: 0.16em;
            margin: 0 0 1.2rem;
            text-transform: uppercase;
          }

          h1 {
            font-size: clamp(2.4rem, 4vw, 3.8rem);
            font-weight: 400;
            letter-spacing: -0.055em;
            line-height: 1.08;
            margin: 0;
          }

          .explanation {
            color: var(--muted);
            font-size: 0.88rem;
            margin: 2.5rem 0;
            max-width: 20rem;
          }

          .feed-url {
            border-bottom: 1px solid var(--line);
            border-top: 1px solid var(--line);
            color: var(--muted);
            font-family: var(--sans);
            font-size: 0.68rem;
            overflow-wrap: anywhere;
            padding: 0.8rem 0;
          }

          .entries {
            padding: 5rem 0 5rem 5rem;
          }

          .entries-head {
            border-bottom: 1px solid var(--ink);
            margin-bottom: 0.5rem;
            padding-bottom: 1.5rem;
          }

          .entries-head .eyebrow {
            margin-bottom: 0.45rem;
          }

          h2 {
            font-size: 1.65rem;
            font-weight: 400;
            margin: 0;
          }

          ol {
            list-style: none;
            margin: 0;
            padding: 0;
          }

          li {
            border-bottom: 1px solid var(--line);
            padding: 1.35rem 0;
          }

          li a {
            color: var(--ink);
            display: block;
            font-size: 1.02rem;
            line-height: 1.35;
            text-decoration: none;
          }

          li a:hover {
            color: var(--accent);
          }

          time {
            color: var(--muted);
            display: block;
            font-family: var(--sans);
            font-size: 0.64rem;
            letter-spacing: 0.06em;
            margin-top: 0.55rem;
            text-transform: uppercase;
          }

          footer {
            border-top: 1px solid var(--line);
            color: var(--muted);
            font-family: var(--sans);
            font-size: 0.62rem;
            letter-spacing: 0.04em;
            padding: 1.2rem 0 2rem;
          }

          footer p {
            margin: 0;
          }

          @media screen and (max-width: 900px) {
            body {
              padding: 0 1.5rem;
            }

            main {
              grid-template-columns: 1fr;
            }

            .feed-note {
              border-bottom: 1px solid var(--line);
              border-right: 0;
              padding: 4rem 0;
            }

            .entries {
              padding: 4rem 0;
            }
          }

          @media screen and (max-width: 600px) {
            header {
              align-items: start;
              display: block;
              padding: 1.2rem 0;
            }

            nav {
              flex-wrap: wrap;
              gap: 0.35rem 1rem;
              margin-top: 0.8rem;
            }
          }
        </style>
      </head>
      <body>
        <header>
          <a class="brand" href="/">小猫</a>
          <nav aria-label="Main navigation">
            <a href="/">Home</a>
            <a href="/posts/">Posts</a>
            <a href="https://notes.sinofine.me/">Notes</a>
            <a class="active" href="/atom.xml">Feed</a>
            <a href="https://neko.ist/about/">About</a>
            <a href="/friends/">Friends</a>
          </nav>
        </header>

        <main>
          <section class="feed-note">
            <p class="eyebrow">Atom feed</p>
            <h1>订阅<br/>更新。</h1>
            <p class="explanation">
              这是供阅读器使用的 Atom 订阅源。将当前页面地址添加到你的阅读器，即可收到新文章。
            </p>
            <p class="feed-url">
              <xsl:value-of select="atom:feed/atom:link[@rel='self']/@href"/>
            </p>
          </section>

          <section class="entries">
            <div class="entries-head">
              <p class="eyebrow">Published entries</p>
              <h2>订阅内容</h2>
            </div>
            <ol>
              <xsl:for-each select="atom:feed/atom:entry">
                <li>
                  <a href="{atom:link/@href}">
                    <xsl:value-of select="atom:title"/>
                  </a>
                  <time>
                    <xsl:value-of select="substring(atom:published, 1, 10)"/>
                  </time>
                </li>
              </xsl:for-each>
            </ol>
          </section>
        </main>

        <footer>
          <p>Atom 1.0 feed / styled for human readers</p>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
