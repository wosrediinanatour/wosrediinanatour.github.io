---
layout: post
lang: en
title: Typesetting of Matlab's and Python's Figures in LaTeX
---

# Typesetting of Matlab's and Python's Figures in LaTeX

Have you been ever bothered about beautifully typeset papers, books, or lecture notes with ugly non-typeset figures and plots? I am and hence wrote this short article. 

It is very easy to export data from Matlab or Python to a text file and to import it into LaTeX using the packages pgfplots and TikZ. It is not just that they typeset figures. Both packages support labeling and references of individual curves. You do not have to change simulations or save a figure once again to change labels, legends, colors of curves, or markers. Just edit the corresponding lines in your LaTeX file. And this approach supports LaTeX *and* pdfLaTeX.

Following example exports two curves of a plot given as two column vectors Y1 and Y2 vs. column vector X (cf. [PgfPlot\'s manual](http://www.ctan.org/pkg/pgfplots)).

# Code Snippet in Matlab

{% highlight matlab %}
fileNameMat = "figure.mat";
table = [vectorX, vectorY1, vectorY2];
save(fileNameMat, 'table', '-ascii');
{% endhighlight %}

# Code Snippet in Python

Note that the vectors are arrays of numpy.

{% highlight python %}
import numpy as np
...
fileName = 'figure.mat'
np.savetxt(fileName, np.c_[vectorX,vectorY1,vectorY2])
{% endhighlight %}

# Code Snippet in LaTeX

In your LaTeX file you have to include following code. Note that it shows how curves are labeled and how curves can be referenced in the text (or caption).

{% highlight latex %}
\usepackage{tikz,pgfplots}
...
\begin{figure}
\begin{tikzpicture}
   \begin{axis}[xlabel={$x$},ylabel={$f_1(x),f_2(x)$}]
   \addplot[color=green] table[x index=0, y index=1] {figure.mat} node[pos=0.2,sloped,above]{$f_1(x)$};\label{curve:f1}
   \addplot[color=blue] table[x index=0, y index=2] {figure.mat} node[pos=0.15,pin=90:{$f_2(x)$}]{};\label{curve:f2}
   \end{axis}
\end{tikzpicture}\caption{This is a caption. It is possible to reference curve \ref{curve:f1} and \ref{curve:f2}.}\label{fig:figure}
\end{figure}
{% endhighlight %}
