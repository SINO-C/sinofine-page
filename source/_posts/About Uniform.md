---
title: About Uniform[WIP]
date: 2021-07-06 23:07:16
tags:
layout: draft
---
<script src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml-full.js" type="text/javascript"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap');
body{font-family: "Libre Baskerville";}
</style>
# About uniform.
_All numbers discussed here is in $\mathbb{R}$_

What I'd like to discuss here is all about uniform concepts I've learnt since. And I wanna summarize them.

## About uniform continuity
In calculus, there exists a concept called _Continuity_ as expressed below:
$$\begin{aligned}&\mbox{$f(x)$ is continuous at $x_0$}\Leftrightarrow\\ &\forall{\epsilon\in \mathbb R}\exists{\delta\in \mathbb R} : |x-x_0|<\delta \Rightarrow |f(x)-f(x_0)|<\epsilon\end{aligned} $$

As is seen above, $\delta$ is somewhere dependent towards $x_0$. What if we genernalize that idea such that $\delta$ shall be dependent not to $x_0$ but to an interval? Just modify the concept as below:
$$\begin{aligned}&\mbox{$f(x)$ is \textbf{uniform} continuous at interval $\mathbf{I}$}\Leftrightarrow\\ &\forall{\epsilon\in\mathbb R}\exists{\delta\in\mathbb R, x_1,x_2\in\mathbf{I}}: |x_1-x_2|<\delta \Rightarrow |f(x_1)-f(x_2)<\epsilon|\end{aligned}$$

And with _Lagrange's mean value theorem_, we can distinguish that in an open interval, if every point is derivable and its value is bounded ($\forall x \in\mathbf{I}\exists A \in\mathbb{R}, |f'(x)|<A$), that function is then uniform continuous.

----

Proof.

If $f(x)$ is derivable in $\mathbf{I}$, according to _Lagrange's mean value theorem_, we can conclude that $\frac{f(x_1)-f(x_2)}{x_1-x_2}=f'(\xi)\leq \max\{f'(x)\}< M$, thus denoting $|x_1-x_2|\leq \delta$ and we can say
$$|f(x_1)-f(x_2)|<M\delta<\epsilon\Rightarrow \delta=\frac{\epsilon}{M}$$

Just let $\delta$ be $\frac{\epsilon}{M}$ and then the requirements for _uniform continuity_ are met.

----

That type of continuity is particularly called _Lipschitz continuity_.

### in a prettier writing style
If we combine the limit's symbols with the continuity concept, the statement can be easily expressed as follows.
$$\mbox{$f(x)$ is continuous at $x_0$}\Leftrightarrow\lim_{x\to x_0}f(x)=f(x_0) $$
The same way the uniform continuity can be as:
$$\begin{aligned}\mbox{$\forall{a,b}\in\mathbf{I}$, $f(x)$ is uniform continuous at $\mathbf{I}$}\Leftrightarrow\lim_{||T||\to 0}|f(a)-f(b)|=0 \\(\mbox{$||T||$ denotes $|a-b|$}) \end{aligned}$$