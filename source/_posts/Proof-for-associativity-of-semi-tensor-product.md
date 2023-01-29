---
title: Proof for associativity of semi-tensor product
date: 2023-01-29 18:02:54
tags: stp
---
<style>
    html {
      color: #1a1a1a;
      background-color: #fdfdfd;
    }
    body {
      hyphens: auto;
      overflow-wrap: break-word;
      text-rendering: optimizeLegibility;
      font-kerning: normal;
    }
    @media (max-width: 600px) {
      body {
        font-size: 0.9em;
        padding: 1em;
      }
    }
    @media print {
      body {
        background-color: transparent;
        color: black;
        font-size: 12pt;
      }
      p, h2, h3 {
        orphans: 3;
        widows: 3;
      }
      h2, h3, h4 {
        page-break-after: avoid;
      }
    }
    p {
      margin: 1em 0;
    }
    a {
      color: #1a1a1a;
    }
    a:visited {
      color: #1a1a1a;
    }
    img {
      max-width: 100%;
    }
    h1, h2, h3, h4, h5, h6 {
      margin-top: 1.4em;
    }
    h5, h6 {
      font-size: 1em;
      font-style: italic;
    }
    h6 {
      font-weight: normal;
    }
    ol, ul {
      padding-left: 1.7em;
      margin-top: 1em;
    }
    li > ol, li > ul {
      margin-top: 0;
    }
    blockquote {
      margin: 1em 0 1em 1.7em;
      padding-left: 1em;
      border-left: 2px solid #e6e6e6;
      color: #606060;
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
    code {
      font-family: Menlo, Monaco, 'Lucida Console', Consolas, monospace;
      font-size: 85%;
      margin: 0;
    }
    pre {
      margin: 1em 0;
      overflow: auto;
    }
    pre code {
      padding: 0;
      overflow: visible;
      overflow-wrap: normal;
    }
    .sourceCode {
     background-color: transparent;
     overflow: visible;
    }
    header {
      margin-bottom: 4em;
      text-align: center;
    }
    #TOC li {
      list-style: none;
    }
    #TOC a:not(:hover) {
      text-decoration: none;
    }
    code{white-space: pre-wrap;}
    span.smallcaps{font-variant: small-caps;}
    span.underline{text-decoration: underline;}
    div.column{display: inline-block; vertical-align: top; width: 50%;}
    div.hanging-indent{margin-left: 1.5em; text-indent: -1.5em;}
    ul.task-list{list-style: none;}
    div.csl-bib-body { }
    div.csl-entry {
      clear: both;
    }
    .hanging div.csl-entry {
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
  </style>
  <style>
      @font-face {
          font-family: 'italic-alpha';
          unicode-range: U+0000-00FF;
          src: local('Georgia-Italic');
      }

      @font-face {
          font-family: 'italic-alpha';
          unicode-range: U+4E00-9FFF;
          src: local('kaiti')
      }

      em {
          font-family: italic-alpha;
          font-style: normal;
      }

      @font-face {
          font-family: 'boldy';
          unicode-range: U+0000-00FF;
          src: local('Georgia-Bold');
      }

      @font-face {
          font-family: 'boldy';
          unicode-range: U+4E00-9FFF;
          src: local("Source Han Serif SC Semibold"),
          local("Noto Serif CJK SC Semibold"),
          local('stzhongsong');
      }

      b,
      strong {
          font-family: boldy;
          font-weight: normal;
      }
      h1,
      h2,
      h3,
      h4,
      h5,
      h6 {
          font-family: "Source Han Serif SC Heavy", "Noto Serif CJK SC Black";
      }
      body {
          font-family: Georgia,"Noto Serif CJK SC","Source Han Serif SC", serif;
      }
      .article {
      width: 80%;
      max-width: 1000px;
      }
  </style>
  <script defer=""
  src="https://cdn.jsdelivr.net/npm/katex@0.15.1/dist/katex.min.js"></script>
  <script>document.addEventListener("DOMContentLoaded", function () {
 var mathElements = document.getElementsByClassName("math");
 var macros = [];
 for (var i = 0; i < mathElements.length; i++) {
  var texText = mathElements[i].firstChild;
  if (mathElements[i].tagName == "SPAN") {
   katex.render(texText.data, mathElements[i], {
    displayMode: mathElements[i].classList.contains('display'),
    throwOnError: false,
    macros: macros,
    fleqn: false
   });
}}});
  </script>
  <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/katex@0.15.1/dist/katex.min.css" />
{% raw %}
<h1 id="preliminaries">Preliminaries</h1>
<p>In this section we’d like to introduce some definitions and
properties involved in the proof for associativity of the semi-tensor
product.</p>
<div class="definition">
<p><strong>Definition 1</strong> (kronecker product). <em>Let <span
class="math inline">A \in \mathcal{M}_{m \times n}, B \in \mathcal{M}_{p
\times q}</span>, then the kronecker product <span class="math inline">A
\otimes B \in \mathcal{M}_{pm \times qn}</span> is defined <span
class="math display">A \otimes B = \left[\begin{array}{ccc}
       a_{11} B &amp; \ldots &amp; a_{1 n} B\\
       \vdots &amp; \ddots &amp; \vdots\\
       a_{m 1} B &amp; \ldots &amp; a_{mn} B
     \end{array}\right] .</span></em></p>
</div>
<div class="lemma">
<p><strong>Lemma 1</strong>. <em>Let <span class="math inline">A \in
\mathcal{M}_{m \times n}</span>, <span class="math inline">B \in
\mathcal{M}_{p \times q}</span>, <span class="math inline">C
  \in \mathcal{M}_{n \times r}</span> and <span class="math inline">D
\in \mathcal{M}_{q \times s}</span>, then <span class="math display">(A
\otimes B) (C \otimes D) = (AC \otimes BD) .</span></em></p>
</div>
<div class="definition">
<p><strong>Definition 2</strong> (semi-tensor product). <em>Let <span
class="math inline">A \in \mathcal{M}_{m \times n}, B \in \mathcal{M}_{p
\times q}</span>, <span class="math inline">l =
  {\operatorname{lcm}} (n, p)</span> being least common multiple of
<span class="math inline">n</span> and <span
class="math inline">p</span>. The semi-tensor product <span
class="math inline">\ltimes</span> is defined <span
class="math display">A \ltimes B = (A \otimes I_{l / n})  (B \otimes
I_{l / p}) .</span></em></p>
</div>
<div class="theorem">
<p><strong>Theorem 1</strong> (prime factorization theorem). <em>every
integer <span class="math inline">n</span> greater than <span
class="math inline">1</span> can be represented uniquely as <span
class="math display">n = \prod_{i = 1}^k p_i^{n_i},</span> where <span
class="math inline">p_1 &lt; p_2 &lt; \cdots &lt; p_k</span> are primes
and the <span class="math inline">n_i</span> are positive
integers.</em></p>
</div>
<div class="corollary">
<p><strong>Corollary 1</strong>. <em><span class="math inline">ab =
{\operatorname{lcm}} (a, b) \gcd (a, b)</span>.</em></p>
</div>
<h1 id="associativity-of-the-semi-tensor-product">Associativity of the
semi-tensor product</h1>
<div class="proposition">
<p><strong>Proposition 1</strong>. <em>Let <span class="math inline">A
\in \mathcal{M}_{p \times q}</span>, <span class="math inline">B \in
\mathcal{M}_{r \times s}</span> and <span class="math inline">C \in
\mathcal{M}_{t \times u}</span>, then <span class="math display">(A
\ltimes B) \ltimes C = A \ltimes (B \ltimes C) .</span></em></p>
</div>
<p>Considering that the form of <span class="math inline">(A \ltimes B)
\ltimes C</span> and <span class="math inline">A \ltimes (B
\ltimes C)</span> are not that simple, it’s not a wise idea to prove the
proposition by directly calculate the results of both sides and compare
them. The procedure we would take is to find some equivalent but more
simple forms to test the associativity, and then obtain the
associativity of the semi-tensor product from the equivalent forms.</p>
<div class="proof">
<p><em>Proof.</em> Define <span class="math inline">\ltimes_0</span>:
<span class="math inline">A \ltimes_0 B = (A \otimes I_r) (B \otimes
I_q)</span>. Then we get <span
class="math display">\left\{\begin{array}{l}
       I_r = I_{{\operatorname{lcm}} (q, r) / q} \otimes I_{\gcd (q,
r)},\\
       I_q = I_{{\operatorname{lcm}} (q, r) / r} \otimes I_{\gcd (q, r)
.}
     \end{array}\right.</span> Thus <span
class="math display">\begin{aligned}
    (A \ltimes_0 B) &amp; = (A \otimes I_{{\operatorname{lcm}} (q, r) /
q} \otimes I_{\gcd
    (q, r)}) (B \otimes I_{{\operatorname{lcm}} (q, r) / r} \otimes
I_{\gcd (q, r)})\\
    &amp; = (A \ltimes B) \otimes I_{\gcd (q, r)} .

\end{aligned}</span> Considering <span class="math inline">(A \ltimes_0
B) \ltimes_0 C</span> and <span class="math inline">A \ltimes_0 (B
\ltimes_0 C)</span>, <span class="math display">\begin{aligned}
    (A \ltimes_0 B) \ltimes_0 C &amp; = ((A \ltimes_0 B) \otimes I_t) (C
\otimes
    I_{qs})\\
    &amp; = ((A \otimes I_r) (B \otimes I_q) \otimes I_t) (C \otimes
I_{qs})\\
    &amp; = (A \otimes I_{rt}) (B \otimes I_{qt}) (C \otimes I_{qs})\\
    &amp; = (A \otimes I_{rt}) ((B \otimes I_t) (C \otimes I_s) \otimes
I_q)\\
    &amp; = (A \otimes I_{rt}) ((B \ltimes_0 C) \otimes I_q)\\
    &amp; = A \ltimes_0 (B \ltimes_0 C),

\end{aligned}</span> thus the operator <span
class="math inline">\ltimes_0</span> is associative.</p>
<p>Then we consider the relation between <span class="math inline">(A
\ltimes_0 B) \ltimes_0 C</span> and <span class="math inline">(A
  \ltimes  B) \ltimes  C</span>. <span
class="math display">\begin{aligned}
    (A \ltimes_0 B) \ltimes_0 C &amp; = ((A \ltimes B) \otimes I_{\gcd
(q, r)})
    \ltimes_0 C\\
    &amp; = (((A \ltimes B) \otimes I_{\gcd (q, r)}) \ltimes C) \otimes
I_{\gcd
    (qs, t)}\\
    &amp; = (((A \ltimes B) \otimes I_{\gcd (q, r)}) \otimes
I_{{\operatorname{lcm}} (qs,
    t) / (qs)}) (C \otimes I_{{\operatorname{lcm}} (qs, t)}) \otimes
I_{\gcd (qs, t)}\\
    &amp; = (((A \ltimes B) \otimes I_{\gcd (q, r)}) \otimes I_t) (C
\otimes
    I_{qs})\\
    &amp; = ((A \ltimes B) \otimes I_{\gcd (q, r) t}) (C \otimes I_{qs})

\end{aligned}</span> For convenience, we denote <span
class="math inline">I \{ n \} : = I_n</span>, and then we get <span
class="math display">\begin{aligned}
    ((A \ltimes B) \otimes I_{\gcd (q, r) t}) &amp; = (A \ltimes B)
\otimes I
    \left\{ \frac{r {\operatorname{lcm}} \left( \frac{s
{\operatorname{lcm}} (q, r)}{r}, t
    \right)}{s {\operatorname{lcm}} (q, r)} \right\} \otimes I \left\{
\frac{st
    {\operatorname{lcm}} (q, r) \gcd (q, r)}{r {\operatorname{lcm}}
\left( \frac{s {\operatorname{lcm}} (q,
    r)}{r}, t \right)} \right\}\\
    &amp; = (A \ltimes B) \otimes I \left\{ \frac{r {\operatorname{lcm}}
\left( \frac{s
    {\operatorname{lcm}} (q, r)}{r}, t \right)}{s {\operatorname{lcm}}
(q, r)} \right\} \otimes I
    \left\{ \frac{sqt}{{\operatorname{lcm}} \left( \frac{s
{\operatorname{lcm}} (q, r)}{r}, t
    \right)} \right\}\\
    &amp; = (A \ltimes B) \otimes I \left\{ \frac{r {\operatorname{lcm}}
\left( \frac{s
    {\operatorname{lcm}} (q, r)}{r}, t \right)}{s {\operatorname{lcm}}
(q, r)} \right\} \otimes I
    \left\{ \gcd (q, r) \gcd \left( \frac{s {\operatorname{lcm}} (q,
r)}{r}, t \right)
    \right\},

\end{aligned}</span> and <span class="math display">(C \otimes I_{qs}) =
C \otimes I \left\{ \frac{{\operatorname{lcm}} \left( \frac{s
     {\operatorname{lcm}} (q, r)}{r}, t \right)}{t} \right\} \otimes I
\left\{
     \frac{tqs}{{\operatorname{lcm}} \left( \frac{s {\operatorname{lcm}}
(q, r)}{r}, t \right)}
     \right\} .</span> it’s not hard to find that <span
class="math inline">\gcd (q, r) \gcd \left( \frac{s {\operatorname{lcm}}
(q,
  r)}{r}, t \right) = \frac{tqs}{{\operatorname{lcm}} \left( \frac{s
{\operatorname{lcm}} (q,
  r)}{r}, t \right)}</span>, <span class="math display">\begin{aligned}
    \gcd (q, r) \gcd \left( \frac{s {\operatorname{lcm}} (q, r)}{r}, t
\right) =
    \frac{tqs}{{\operatorname{lcm}} \left( \frac{s {\operatorname{lcm}}
(q, r)}{r}, t \right)} &amp;
    \Leftrightarrow tqs = \gcd (q, r) \frac{st {\operatorname{lcm}} (q,
r)}{r}\\
    &amp; \Leftrightarrow tqs = \frac{sqrt}{r},

\end{aligned}</span> and that’s trivial.</p>
<p>Thus we get <span class="math inline">(A \ltimes_0 B) \ltimes_0 C =
((A \ltimes B) \ltimes C) \otimes
  I \left\{ \gcd (q, r) \gcd \left( \frac{s {\operatorname{lcm}} (q,
r)}{r}, t \right)
  \right\}</span>.</p>
<p>By the same method, we consider <span class="math inline">A \ltimes_0
(B \ltimes_0 C)</span>. <span class="math display">\begin{aligned}
    A \ltimes_0 (B \ltimes_0 C) &amp; = A \ltimes_0 ((B \ltimes C)
\otimes I \{
    \gcd (s, t) \})\\
    &amp; = (A \ltimes ((B \ltimes C) \otimes I \{ \gcd (s, t) \}))
\otimes I
    \{ \gcd (q, rt) \}\\
    &amp; = \begin{aligned}
        &amp;\left( A \otimes I \left\{ \frac{{\operatorname{lcm}} (q,
rt)}{q} \right\}
    \right) \left( (B \ltimes C) \otimes I \left\{ \frac{\gcd (s, t)
    {\operatorname{lcm}} (q, rt)}{rt} \right\} \right)\\ &amp;\otimes I
\{ \gcd (q, rt) \}
\end{aligned}\\
    &amp; = (A \otimes I \{ rt \}) ((B \ltimes C) \otimes I \{ q \gcd
(s, t)
    \})

\end{aligned}</span> <span class="math display">\begin{aligned}
    (A \otimes I \{ rt \}) &amp; = A \otimes I \left\{
\frac{{\operatorname{lcm}} \left(
    q, \frac{r {\operatorname{lcm}} (s, t)}{s} \right)}{q} \right\}
\otimes I \left\{
    \frac{rtq}{{\operatorname{lcm}} \left( q, \frac{r
{\operatorname{lcm}} (s, t)}{s} \right)}
    \right\}

\end{aligned}</span> and <span class="math display">\begin{aligned}
    ((B \ltimes C) \otimes I \{ q \gcd (s, t) \}) &amp; = (B \ltimes C)
\otimes
    I \left\{ \frac{s {\operatorname{lcm}} \left( \frac{r
{\operatorname{lcm}} (s, t)}{s}, q
    \right)}{r {\operatorname{lcm}} (s, t)} \right\} \otimes I \left\{
    \frac{qrt}{{\operatorname{lcm}} \left( \frac{r {\operatorname{lcm}}
(s, t)}{s}, q \right)}
    \right\}

\end{aligned}</span> so we get <span class="math display">A \ltimes_0 (B
\ltimes_0 C)=
(A \ltimes (B \ltimes C)) \otimes I \left\{
  \frac{qrt}{{\operatorname{lcm}} \left( q, \frac{r {\operatorname{lcm}}
(s, t)}{s} \right)}
\right\}</span>.</p>
<p>And then we prove that <span
class="math inline">\frac{qrt}{{\operatorname{lcm}} \left( q, \frac{r
{\operatorname{lcm}}
  (s, t)}{s} \right)} = \frac{tqs}{{\operatorname{lcm}} \left( \frac{s
{\operatorname{lcm}} (q,
  r)}{r}, t \right)}</span>. <span class="math display">\begin{aligned}
    \frac{qrt}{{\operatorname{lcm}} \left( q, \frac{r
{\operatorname{lcm}} (s, t)}{s} \right)} =
    \frac{tqs}{{\operatorname{lcm}} \left( \frac{s {\operatorname{lcm}}
(q, r)}{r}, t \right)} &amp;
    \Leftrightarrow \frac{r}{{\operatorname{lcm}} \left( q, \frac{r
{\operatorname{lcm}} (s,
    t)}{s} \right)} = \frac{s}{{\operatorname{lcm}} \left( \frac{s
{\operatorname{lcm}} (q,
    r)}{r}, t \right)}\\
    &amp; \Leftrightarrow r {\operatorname{lcm}} \left( \frac{s
{\operatorname{lcm}} (q, r)}{r}, t
    \right) = s {\operatorname{lcm}} \left( \frac{r {\operatorname{lcm}}
(s, t)}{s} \right) .

\end{aligned}</span> When <span class="math inline">q, r, s, t</span>
are coprime, <span class="math display">\begin{aligned}
    \frac{s}{{\operatorname{lcm}} \left( \frac{s {\operatorname{lcm}}
(q, r)}{r}, t \right)} &amp; =
    \frac{s}{{\operatorname{lcm}} (sq, t)}\\
    &amp; = \frac{1}{qt}\\
    &amp; = \frac{r}{prst / s}\\
    &amp; = \frac{r}{{\operatorname{lcm}} \left( \frac{r
{\operatorname{lcm}} (s, t)}{s}, q
    \right)} .

\end{aligned}</span> And when they are not coprime, Let <span
class="math inline">q = \prod_{i = 1}^n p_i^{a_i}</span>, <span
class="math inline">r =
  \prod_{i = 1}^n p_i^{b_i}</span>, <span class="math inline">s =
\prod_{i = 1}^n p_i^{c_i}</span>, <span class="math inline">t = \prod_{i
=
  1}^n p_i^{d_i}</span>, and then we get <span
class="math display">\begin{aligned}
    r {\operatorname{lcm}} \left( \frac{s {\operatorname{lcm}} (q,
r)}{r}, t \right) &amp; =
    \prod_{i = 1}^n p_i^{b_i} {\operatorname{lcm}} \left( \prod_{i =
1}^n p_i^{\min
    (a_i, b_i) + c_i - d_i}, \prod_{i = 1}^n p_i^{d_i} \right)\\
    &amp; = \prod_{i = 1}^n p_i^{b_i + \min (\min (a_i, b_i) + c_i -
b_i,
    d_i)},\\
    s {\operatorname{lcm}} \left( \frac{r {\operatorname{lcm}} (s,
t)}{s} \right) &amp; = \prod_{i =
    1}^n p_i^{c_i} {\operatorname{lcm}} \left( \prod_{i = 1}^n p_i^{\min
(c_i, d_i) +
    b_i - c_i}, \prod_{i = 1}^n p_i^{a_i} \right)\\
    &amp; = \prod_{i = 1}^n p_i^{c_i + \min (\min (c_i, d_i) + b_i -
c_i, a_i)}
    .

\end{aligned}</span> It remains to prove that <span
class="math display">\begin{aligned}
    &amp; b_i + \min (\min (a_i, b_i) + c_i - b_i, d_i) = c_i + \min
(\min (c_i,
    d_i) + b_i - c_i, a_i)\\
      \Leftrightarrow &amp;b_i - c_i + \min (\min (a_i, b_i) + c_i -
b_i, d_i) = \min
    (\min (c_i, d_i) + b_i - c_i, a_i) \\
      \Leftrightarrow &amp; \min (\min (a_i, b_i), d_i + b_i - c_i) =
\min (\min (c_i,
    d_i) + b_i - c_i, a_i) \\
    \Leftrightarrow &amp; \min (\min (a_i, b_i), d_i + b_i - c_i) = \min
(\min (b_i,
    d_i + b_i - c_i) , a_i) \\
    \Leftrightarrow &amp;\min (a_i, b_i, d_i + b_i - c_i) = \min (b_i,
d_i + b_i -
    c_i, a_i)

\end{aligned}</span> and that’s trivial.</p>
<p>Then by doing projection, <span class="math display">\begin{aligned}
    A \ltimes_0 (B \ltimes_0 C) = (A \ltimes_0 B) \ltimes_0 C &amp;
    \Leftrightarrow (A \ltimes_0 (B \ltimes_0 C)) \Psi = ((A \ltimes_0
B)
    \ltimes_0 C) \Psi\\
    &amp; \Leftrightarrow A \ltimes (B \ltimes C) = (A \ltimes B)
\ltimes C,

\end{aligned}</span> where <span class="math display">\begin{aligned}
      \Psi &amp;= \left( I \left\{ qsu -
  \frac{qrt}{{\operatorname{lcm}} \left( q, \frac{r {\operatorname{lcm}}
(s, t)}{s} \right)}
  \right\} \otimes {\boldsymbol{1}} \left\{
\frac{qrt}{{\operatorname{lcm}} \left( q,
\frac{r {\operatorname{lcm}} (s, t)}{s} \right)} \right\}  \right)\\
           &amp;= \left( I \left\{
  qsu - \frac{tqs}{{\operatorname{lcm}} \left( \frac{s
{\operatorname{lcm}} (q, r)}{r}, t \right)}
  \right\} \otimes {\boldsymbol{1}} \left\{
\frac{tqs}{{\operatorname{lcm}} \left( \frac{s
  {\operatorname{lcm}} (q, r)}{r}, t \right)} \right\} \right)

\end{aligned}</span> ◻</p>
</div>
{% endraw %}
