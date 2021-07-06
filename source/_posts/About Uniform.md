---
title: About Uniform[WIP]
date: 2021-07-06 23:07:16
tags:
---
<script src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml-full.js" type="text/javascript"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap');
body{font-family: "Libre Baskerville";}
</style>
<h1 id="about-uniform.">About uniform.</h1>
<p><em>All numbers discussed here is in <span class="math inline">\(\mathbb{R}\)</span></em></p>
<p>What I’d like to discuss here is all about uniform concepts I’ve learnt since. And I wanna summarize them.</p>
<h2 id="about-uniform-continuity">About uniform continuity</h2>
<p>In calculus, there exists a concept called <em>Continuity</em> as expressed below: <span class="math display">\[\begin{aligned}&amp;\mbox{$f(x)$ is continuous at $x_0$}\Leftrightarrow\\ &amp;\forall{\varepsilon\in \mathbb R}\exists{\delta\in \mathbb R} : \vert x-x_0\vert &lt;\delta \Rightarrow \vert f(x)-f(x_0)\vert &lt;\varepsilon\end{aligned} \]</span></p>
<p>As is seen above, <span class="math inline">\(\delta\)</span> is somewhere dependent towards <span class="math inline">\(x_0\)</span>. What if we genernalize that idea such that <span class="math inline">\(\delta\)</span> shall be dependent not to <span class="math inline">\(x_0\)</span> but to an interval? Just modify the concept as below: <span class="math display">\[\begin{aligned}&amp;\mbox{$f(x)$ is \textbf{uniform} continuous at interval $\mathbf{I}$}\Leftrightarrow\\ &amp;\forall{\varepsilon\in\mathbb R}\exists{\delta\in\mathbb R, x_1,x_2\in\mathbf{I}}: \vert x_1-x_2\vert &lt;\delta \Rightarrow \vert f(x_1)-f(x_2)&lt;\varepsilon\vert \end{aligned}\]</span></p>
<p>And with <em>Lagrange’s mean value theorem</em>, we can distinguish that in an open interval, if every point is derivable and its value is bounded (<span class="math inline">\(\forall x \in\mathbf{I}\exists A \in\mathbb{R}, \vert f&#39;(x)\vert &lt;A\)</span>), that function is then uniform continuous.</p>
<hr />
<p>Proof.</p>
<p>If <span class="math inline">\(f(x)\)</span> is derivable in <span class="math inline">\(\mathbf{I}\)</span>, according to <em>Lagrange’s mean value theorem</em>, we can conclude that <span class="math inline">\(\frac{f(x_1)-f(x_2)}{x_1-x_2}=f&#39;(\xi)\leq \max\{f&#39;(x)\}&lt; M\)</span>, thus denoting <span class="math inline">\(\vert x_1-x_2\vert \leq \delta\)</span> and we can say <span class="math display">\[\vert f(x_1)-f(x_2)\vert &lt;M\delta&lt;\varepsilon\Rightarrow \delta=\frac{\varepsilon}{M}\]</span></p>
<p>Just let <span class="math inline">\(\delta\)</span> be <span class="math inline">\(\frac{\varepsilon}{M}\)</span> and then the requirements for <em>uniform continuity</em> are met.</p>
<hr />
<p>That type of continuity is particularly called <em>Lipschitz continuity</em>.</p>
<h3 id="in-a-prettier-writing-style">in a prettier writing style</h3>
<p>If we combine the limit’s symbols with the continuity concept, the statement can be easily expressed as follows. <span class="math display">\[\mbox{$f(x)$ is continuous at $x_0$}\Leftrightarrow\lim_{x\to x_0}f(x)=f(x_0) \]</span> The same way the uniform continuity can be as: <span class="math display">\[\begin{aligned}\mbox{$\forall{a,b}\in\mathbf{I}$, $f(x)$ is uniform continuous at $\mathbf{I}$}\Leftrightarrow\lim_{\Vert T\Vert \to 0}\vert f(a)-f(b)\vert =0 \\(\mbox{$\Vert T\Vert $ denotes $\vert a-b\vert $}) \end{aligned}\]</span></p>
