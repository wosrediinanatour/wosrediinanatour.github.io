---
layout: post
usemathjax: true
lang: en
title: Dos and Don'ts when Writing a Paper
---

# Dos and Don'ts when Writing a Paper 

There are some dos and don\'ts when writing a scientific paper that heavily improve the reading. In the sequel, I provide some hints I have learned as author and reviewer in the past. If following list lacks some important hints, contact me and I will add them here.

# Improving the Readability of a Scientific Paper

-   Try to reduce following modal verbs:
    -   can, could, must, have to, should, would
-   Cite papers, call rules, give hints, or move derivations to the appendix instead of using following sentences:
    -   \"It can be easily shown that\...\" 
    -   \"After some computation\...\" 
    -   \"It is straightforward (to show that\...)\"
-   As a rough guideline use 
    -   more than 10 references for conferences papers,
    -   more than 30 references for journals papers,
    -   other references than only yours.
-   In each sentence, present only one idea. Write condensed.
-   Use LaTeX instead of Word. Use following LaTeX\'s packages:
    -    TikZ and PgfPlots for figures and Matlab plots.
    -   SIunitX for (SI) units
    -   MathTools for typesetting of equations
-   Use captions that explain the figures/tables.
-   Mathematical symbols are roman, if they are descriptive 
    -   Superscript and subscript are italic, if they are variables or indices, else roman:  $x_k, k \in \mathbb{Z}$ vs.  $x^{\mathrm{MSE}}$, or $x^{\mathrm{T}}$ (transposed) 
    -   Functions are roman, if they are descriptive, else italic: $f(x)$ vs. $\sin(x)$ (sine) or $\mathrm{E}(x)$ (expectation) or $x^{\mathrm{T}}$ (transposed)
    -   Units use roman fonts (see below). 
-   Labels of axes in function plots:
    -   Use words *and* mathematical symbols
    -   Use \"Position $x/$m\", \"Time $t/$s\", or \"Gain $G/$dB\" instead of \"$x [m]$\", \"$t [s]$\", \"$G [dB]$\". The value of a dimensional physical quantity $G$ can be expressed as $G = \{G\}[G]$ with the dimensionless numerical factor $\{G\}$ and the unit $[G]$. Observe that units are *not* italic. See [Emerson, W. H. (2008). On quantity calculus and units of measurement.*Metrologia*, *45*(2), 134](http://iopscience.iop.org/0026-1394/45/2/002) and the [Guide for the Use of the International System of Units](http://physics.nist.gov/cuu/pdf/sp811.pdf) for more information. 
    -   Use a space between the value and the unit. I would recommend LaTeX\'s SIunitX package.  
-   Use tables for a long list of simulation and measurement settings. 
-   Tables should be set as described by <http://mirror.klaus-uwe.me/ctan/macros/latex/contrib/booktabs/booktabs.pdf>:
    -   Never, ever use vertical rules.
    -   Never use double rules. 
    -   Put the units in the column heading (not in the body of the table).
-   At the end of the paper you don\'t need a second abstract. Draw conclusions instead.
-   Use less than 5 abbreviations. Do not use them in the paper\'s title. 
-   Divide the introduction into Motivation, State of the Art,  Contribution(s) and Outline. 
-   Simplify notations. Use sub-/superscripts instead of different symbols, but use as few as possible. 
-   Motivate your work by means of an application. 
-   The  \"delta-Dirac function\" is either a distribution or an indicator function, but this should be specified.
-   Do not use \\jmath and \\imath for $\sqrt{-1}$ in LaTeX.
-   Use hyphens: especially [compound modifiers](http://en.wikipedia.org/wiki/Hyphen#Compound_modifiers).

Acknowledgements: Paul-Jürgen Wagner\'s comments helped me to improve and extend the list. 

# Further Reading

-   <http://www.math.uiuc.edu/~west/grammar.html>
-   [Guide for the Use of the International System of Units](http://physics.nist.gov/cuu/pdf/sp811.pdf)
-   *How to write & publish a scientific paper* by Day, Robert A., Westport, Conn. : Oryx Press, 1998

