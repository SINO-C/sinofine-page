---
title: About approximation theory in Functional analysis
date: 2023-07-14 22:10:14
tags:
    - approximation
    - functional analysis
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
          font-family: georgia;
          font-style: italic;
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
          font-family: Georgia;
          font-weight: bold;
      }
      h1,
      h2,
      h3,
      h4,
      h5,
      h6 {
          font-family: Georgia, "Source Han Serif SC Heavy", "Noto Serif CJK SC Black";
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
<header id="title-block-header">
<div class="abstract">
<div class="abstract-title">Abstract</div>
<p>This article investigates the approximation theory in the sense of
functional analysis, to study the inner logics of approximation. And
then the condition of formal series space normability is discussed.</p>
</div>
</header>
<h1 id="sec:org6833cac">Introduction</h1>
<p>We have once learnt the Weierstrass Approximation Theorem in Calculus
courses, which indicates that <span class="math inline">\forall
f\in\mathcal{C}[a,b]</span>, there exists polynomial series capable of
converging to <span class="math inline">f</span> uniformly. In the least
square approximation problem, we also studied the method of Chebyshev
polynomial base to approximate continuous functions. To analyze those
issues, it is natural to introduce normed spaces.</p>
<p>To represent an element of some normed space, there is a concept
called base, whose general idea is to destruct every element into
combinations of some elements. In finite dimension normed spaces, base
are widely used to simplify situations, while it’s also a definition of
the finite dimension property of finite dimension normed spaces. With
the aid of base theory, we can conclude that some sort of methods of
base cannot represent banach spaces, thus cannot represent <span
class="math inline">\mathcal{C}[a,b]</span> or <span
class="math inline">L^p(E)</span>.</p>
<h1 id="sec:orga416aee">Two types of basis for infinite dimension normed
spaces</h1>
<p>For a finite normed space <span class="math inline">X</span>, there
exists <span class="math inline">n\in \mathbb N</span>, such that exists
linear irrelevant <span class="math inline">\{e_1,\cdots, e_n\}</span>
where every element <span class="math inline">x\in X</span> can be
represented as <span class="math inline">x=\sum_{i=1}^{n}k_ie_i</span>.
For infinite dimension normed spaces, the infinity term must exists,
either in the sum or in the cardinality of base.</p>
<p>The concern of base is from the naive thought that every polynomial
can be represented using the linear combination of <span
class="math inline">\{x^i|i\in \mathbb N\}</span>. If elements in a
normed space can be approximated in polynomial, then the base of normed
space should be approximated in polynomial, or more precise, to be
represented in some sort of polynomial base. Thus we need to learn
something about base.</p>
<h2 id="sec:orgdccf97b">Hamel basis</h2>
<p>Firstly we define <span
class="math inline">\operatorname{span}\{e_i\}_{i\in I}</span> as <span
class="math display">\operatorname{span}\{e_i\}_{i\in I} =
\left\{\sum_{i=1}^Nk_ie_i|N\in \mathbb N,
k_i\in \mathbb K\right\}</span> If we let the base have infinite
cardinity, whether countable or uncountable, and let the whole space be
<span class="math inline">X=\operatorname{span}\{e_i\}_{i\in I}</span>,
where <span class="math inline">\{e_i\}_{i\in I}</span> are linear
independent, then we got so called Hamel basis.</p>
<p>From the definition we instantly get that every element in a space
with Hamel basis can be represented as finite sum of Hamel base.</p>
<p>Actually from Zorn’s lemma it’s easy to see that every linear space
has its Hamel base.</p>
<div class="lemma">
<p><strong>Lemma 1</strong> (Zorn’s lemma). <em>Let <span
class="math inline">(\mathcal F,\prec)</span> is a partial order set, if
every order complete subset has its upper bound, then there is maximal
element in <span class="math inline">(\mathcal F,\prec)</span>.</em></p>
</div>
<p>And then we can prove the statement above.</p>
<div class="proposition">
<p><strong>Proposition 1</strong>. <em>Every linear space has its Hamel
base.</em></p>
</div>
<div class="proof">
<p><em>Proof.</em> Let <span class="math inline">\mathcal F</span> be
the set containing all linear independent sets, then we define the <span
class="math inline">\prec</span>: <span
class="math inline">\{e_i\}_{i\in I}\prec \{e_j\}_{j\in J} \iff
\{e_i\}_{i\in I}\subset \{e_j\}_{j\in J}</span>.</p>
<p>For any order complete subset <span class="math inline">\mathcal
A</span>, consider the set <span class="math inline">B = \bigcup_{E\in
\mathcal A} E</span>. As <span class="math inline">\mathcal A</span> is
order complete, then for any finite subset <span
class="math inline">F\in G</span>, exists <span class="math inline">E\in
\mathcal A</span> such that <span class="math inline">F\subseteq
E</span>. Thus the elements in <span class="math inline">B</span> are
linear independent, so <span class="math inline">B\in \mathcal F</span>
and for any <span class="math inline">E\in \mathcal A</span>, <span
class="math inline">E\subseteq B</span>. That is, <span
class="math inline">B</span> is an upper bound of <span
class="math inline">\mathcal A</span>.</p>
<p>Then according to Zorn’s lemma, there exists a maximum element <span
class="math inline">M</span>, which is a Hamel base of the space. ◻</p>
</div>
<p>Actually there are many base that are Hamel base, such as <span
class="math inline">\{x^i|i\in \mathbb
N\}</span>. However, the next subsection showed that those (countable)
Hamel base are not much helpful as they are not fit in Banach
spaces.</p>
<h2 id="sec:orgbf63ba4">The inability of countable Hamel base to
represent a infinite dimension Banach space</h2>
<p>Although Hamel base exists in all linear spaces, What we are aware of
are countable base, which are incompatible with infinite dimension
Banach spaces. The incompatibility can then be derived from Baire
Category Theorem.</p>
<div class="theorem">
<p><strong>Theorem 2</strong> (Baire Category Theorem). <em>A banach
space cannot be a countable union of nowhere dense sets.</em></p>
</div>
<p>Then we can get the following theorem.</p>
<div class="theorem">
<p><strong>Theorem 3</strong>. <em>A Banach space with infinity
dimension cannot have a countable Hamel base.</em></p>
</div>
<div class="proof">
<p><em>Proof.</em> If a Banach space <span
class="math inline">(X,||\cdot||)</span> have a countable Hamel base,
denoting <span class="math inline">\{e_i\}_{i=1}^{\infty}</span>, then
we can decompose the space into union of closed sets. Denote <span
class="math inline">F_n</span> as follows, <span
class="math display">F_n = \operatorname{span}\{e_i\}_{i=1}^{n},</span>
then we get that <span
class="math inline">X=\bigcup_{i=1}^{\infty}F_{n}</span>, and <span
class="math inline">F_n</span> are closed (as components of every base
are closed, which is a conclusion of that <span
class="math inline">\mathbb K</span> is banach). To prove that <span
class="math inline">F_n</span> are nowhere dense, we need to show that
the internal of <span class="math inline">F_n</span> is empty. Denote
the internal of <span class="math inline">F_n</span> to be <span
class="math inline">\mathop{\mathrm{int}}F_n</span>. If <span
class="math inline">\mathop{\mathrm{int}}F_n\neq \emptyset</span>, then
there exists closed ball <span
class="math inline">\overline{B(x,r)}\subset F_n</span>. Then we can
move <span class="math inline">e_{n+1}</span> into <span
class="math inline">\overline{B(x,r)}</span>, and let y be follows,
<span class="math display">y = \frac{rx_{n+1}}{||x_{n+1}||} + x,</span>
Thus <span class="math inline">y\in \overline{B(x,r)}\in F_n</span>,
Thus <span class="math inline">e_{n+1}\in F_{n}</span>. Contradict.</p>
<p>Thus <span class="math inline">X</span> is the countable union of
nowhere dense sets <span
class="math inline">\{F_n\}_{n=1}^{\infty}</span>, contradict. ◻</p>
</div>
<p>Such theorem shows that any polynomial space cannot be banach with
any norm.</p>
<h2 id="sec:org8368db2">Schauder basis</h2>
<p>The shortcomings of the Hamel base is shown before, and seems that we
need some other basis difinition for better dealing with infinite
dimension spaces like Banach spaces. the Schauder base is one of the
suitable base.</p>
<p>Let <span class="math inline">\{e_n\}_{n=1}^{\infty}\subset X</span>.
If for every <span class="math inline">x\in X</span>, there exists <span
class="math inline">x=\sum_{i=1}^{\infty}k_ie_i, k_i\in \mathbb
K</span>, then we call <span
class="math inline">\{e_n\}_{n=1}^{\infty}\subset X</span> a Schauder
base of <span class="math inline">X</span>.</p>
<p>Worth attention that power basis is not a Schauder basis, although
according to the Stone-Weierstrass Theorem, the span of power basis is
dense in the space <span class="math inline">\mathcal C[a,b]</span>. For
example, let <span class="math inline">f\in \mathcal C[0,1]</span>,
defined as follows, <span class="math display">f(x)=\begin{cases}
0,&amp; x\in[0,1/2),\\
2x-1,&amp; \text{otherwise.}
\end{cases}</span> If power basis is a Schauder basis, then it should
converge uniformly on the interval <span
class="math inline">[0,1]</span>, thus it converges to <span
class="math inline">0</span> uniformly in <span
class="math inline">[0,1/2)</span>, from which we concluded that <span
class="math inline">f\equiv 0</span>, contradict.</p>
<h1 id="sec:org394e8ce"><span
class="math inline">\mathcal{C}[a,b]</span> and Stone-Weierstrass
Theorem</h1>
<p>As is known in the Functional analysis, the norm of <span
class="math inline">\mathcal C[a,b]</span> means that convergence in the
<span class="math inline">\mathcal C[a,b]</span> is meant uniform
convergence to some continuous function in the interval <span
class="math inline">\mathcal C[a,b]</span>. From Stone-Weierstrass
Theorem, we get that every element from <span
class="math inline">\mathcal C[a,b]</span>, there is polynomial series
that converges uniformly to the element. Stone-Weierstrass Theorem is
not limited on the interval, but on the compact set.</p>
<p>Consider an algebra, which is meant an vector space <span
class="math inline">X</span> on <span class="math inline">\mathbb
K=\mathbb C</span> or <span class="math inline">\mathbb K=\mathbb
R</span>, with multiplication arithmetic <span
class="math display">(x,y)\in X\times
X\rightarrow xy\in X,</span> meeting the following properties: for any
<span class="math inline">x,y,z\in X</span>, <span
class="math inline">\alpha,\beta\in
\mathbb K</span>,</p>
<ol>
<li><p>(Associativity) <span
class="math inline">(xy)z=x(yz)</span>;</p></li>
<li><p>(Distributivity) <span class="math inline">x(y+z)=xy+xz</span>,
<span class="math inline">(x+y)z=xz+yz</span>;</p></li>
<li><p><span class="math inline">(\alpha x)(\beta
y)=(\alpha\beta)(xy)</span>.</p></li>
</ol>
<p>And subalgebra means subspace itself is an algebra.</p>
<p>Now we can introduce the Stone-Weierstrass Theorem. In Calculus
courses, the Weierstrass Approximation Theorem is usually conducted with
Bernstein polynomials. However, the generalized theorem only needs some
basic assumption on a compact space <span class="math inline">K</span>
and its normed space <span class="math inline">\mathcal C(K)</span>.</p>
<div class="theorem">
<p><strong>Theorem 4</strong> (Stone-Weierstrass Theorem). <em>Denote
<span class="math inline">K</span> to be a compact metric space. Let
<span class="math inline">\mathcal A</span> be the subalgebra of real
space <span class="math inline">\mathcal C(K)</span>, with following
properties,</em></p>
<ol>
<li><p><em>Exists constant function <span class="math inline">c\in
\mathcal A</span>;</em></p></li>
<li><p><em>For any different point <span class="math inline">\xi,\eta\in
K</span>, exists function <span class="math inline">g\in
\mathcal{A}</span>, such that <span class="math inline">g(\xi)\neq
g(\eta)</span>.</em></p></li>
</ol>
<p><em>Then <span class="math inline">\mathcal{A}</span> is dense in
<span class="math inline">\mathcal{C}(K)</span>.</em></p>
</div>
<p>Using the Stone-Weierstrass Theorem, it’s easy to obtain the
Weierstrass Approximation Theorem.</p>
<div class="corollary">
<p><strong>Corollary 1</strong> (Weierstrass Approximation Theorem).
<em>Denote <span class="math inline">K</span> to be compact subset of
<span class="math inline">\mathbb{R}^{n}</span>, <span
class="math inline">\mathcal{P}(K)</span> is all the n-variate
polynomials restricted on <span class="math inline">K</span>, then <span
class="math inline">\mathcal{P}(K)</span> is dense in <span
class="math inline">\mathcal{C}(K)</span>.</em></p>
</div>
<div class="proof">
<p><em>Proof.</em> It’s obvious that constant function is polynomials,
thus the first requirement is met.</p>
<p>For any different point <span class="math inline">\xi,\eta\in
K</span>, exists <span class="math inline">1\le i\le n</span>, such that
<span class="math inline">\xi_{i}\ne \eta_{i}</span>, thus we may let
<span class="math inline">g(x)=x_i</span>, where <span
class="math inline">x_i</span> denotes the ith component of <span
class="math inline">x</span>. Thus the second requirement is met.</p>
<p>According to the Stone-Weierstrass Theorem, <span
class="math inline">\mathcal{P}(K)</span> is dense in <span
class="math inline">\mathcal{C}(K)</span>. ◻</p>
</div>
<p>The proof is quite simple, owing to the strength of Stone-Weierstrass
Theorem.</p>
<p>There is also a complex space version of Stone-Weierstrass Theorem,
using which we can conclude the trigonometric version of Weierstrass
Approximation Theorem.</p>
<div class="theorem">
<p><strong>Theorem 5</strong> (Complex Stone-Weierstrass Theorem).
<em>Denote <span class="math inline">K</span> to be a compact metric
space. Let <span class="math inline">\mathcal A</span> be the subalgebra
of complex space <span class="math inline">\mathcal C(K)</span>, with
following properties,</em></p>
<ol>
<li><p><em>Exists constant function <span class="math inline">c\in
\mathcal A</span>;</em></p></li>
<li><p><em>For any different point <span class="math inline">\xi,\eta\in
K</span>, exists function <span class="math inline">g\in
\mathcal{A}</span>, such that <span class="math inline">g(\xi)\neq
g(\eta)</span>.</em></p></li>
<li><p><em>If <span class="math inline">g\in \mathcal{A}</span>, then
<span class="math inline">\overline{g}\in
\mathcal{A}</span>.</em></p></li>
</ol>
<p><em>Then <span class="math inline">\mathcal{A}</span> is dense in
<span class="math inline">\mathcal{C}(K)</span>.</em></p>
</div>
<p>The Weierstrass Approximation Theorems told us that <span
class="math inline">\mathcal{P}(K)</span> is dense in <span
class="math inline">\mathcal{C}(K)</span>, in another word, that is
<span class="math inline">\mathcal{C}(K)\subseteq
\overline{\mathcal{P}(K)}</span>. The latter is then a restrict of <span
class="math inline">\mathcal{P}\llbracket
X_i\rrbracket_{i=1}^{n}</span>.</p>
<h1 id="sec:org792cde0"><span class="math inline">P[x]</span> and its
completion <span class="math inline">P\llbracket x\rrbracket</span>,
Normability problem</h1>
<p>As is shown in the sections above, <span
class="math inline">\mathcal{C}(K)\subseteq
\overline{\mathcal{P}(K)}</span>. What’s more, there is elements such
that <span
class="math inline">\overline{\mathcal{P}(K)}-\mathcal{C}(K)\neq
\emptyset</span>. For example, let <span
class="math inline">K=[0,1]</span>, then <span
class="math inline">\sum_{n=1}^{\infty}(2x)^{n}</span> diverges on the
<span class="math inline">\operatorname{sup}</span> norm.</p>
<p>However, we can find subspace of <span
class="math inline">\overline{\mathcal{P}(K)}</span>. For example, we
may define weighted Hardy space on subspace of the formal series, which
is even Hilbert spaces.</p>
<p>Actually, there is a theorem to provide a necessary and sufficient
condition for a topological vector space to be normable.</p>
<div class="theorem">
<p><strong>Theorem 6</strong> (Kolmogorov’s normability criterion).
<em>A topological vector space is normable if and only if it is a <span
class="math inline">T_1</span> space and admits a bounded convex
neighborhood of the origin.</em></p>
</div>
<p>Considering that the formal power series lacks topological
properties, it may be normable under some constructed topologies.</p>
<h1 id="sec:orgb2f1f7e">Acknowledgements</h1>
<p>The topic originates from a short conversation among me, my classmate
xxx, and Prof. yyy, which concenterated on the question whether a
continuous function can be approximated with a series of rational
polynomials. Further, the question is rewritten in a more precise form,
“is rational polynomial space dense in <span
class="math inline">\mathcal{C}[a,b]</span> or some sort of other normed
space?” Surely the question needs more conditions on the rational
polynomial space, for example, the rational polynomial space needs some
sort of norms.</p>
<p>Furthermore, I come about some thought on the problem in the opposite
direction that, as polynomial space <span
class="math inline">P[x]</span> can be completed into formal power
series space <span class="math inline">P\llbracket x \rrbracket</span>, can
the <span class="math inline">P\llbracket x\rrbracket</span> be normable?
Surely according to Stone-Weierstrass Theorem, we get that <span
class="math inline">\mathcal C[a,b]\subset P\llbracket x\rrbracket</span>.
However, for the cause of unconvergence for some element of the space
<span class="math inline">P\llbracket x\rrbracket</span>, for example, <span
class="math inline">\sum_{n=1}^{\infty}x^{n}</span>, we cannot use that
norm. Then under some investigation and organization, The article is
done.</p>
<p>Huge thanks to my classmate xxx, and Prof. yyy!</p>
{% endraw %}