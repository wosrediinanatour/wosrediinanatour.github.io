---
layout: post
usemathjax: true
lang: en
title: Performance Bounds for Bayesian Estimators
---

# Performance Bounds for Bayesian Estimators: Cramer-Rao Bounds and Weiss-Weinstein Bounds

*Bayesian performance bounds* are supposed to benchmark Bayesian estimators and detectors, which infer random parameters of interest from noisy measurements. These parameters are usually physical values as temperature, position, etc. 

Consider a *measurement model *

\\\[\\boldsymbol{y} = C(\\boldsymbol{x})\~,\\\]

where a sensor modeled by a probabilistic mapping $C$ measures a random parameter vector  $\boldsymbol{x}$. An vector-valued estimator  $\hat{\boldsymbol{x}}(\boldsymbol{y})$ infers the parameter vector using random measurements $\boldsymbol{y}$. A simple example adds noise to the paramter, i.e.

\\\[\\boldsymbol{y} = \\boldsymbol{x} + \\boldsymbol{v}\~,\\\]

where the random vector $\boldsymbol{v}$ models measurement noise. 

A *performance bound* \[VB07\] is a lower bound on the *mean-square-error matrix* $\mathrm{E}(\tilde{\boldsymbol{x}}\tilde{\boldsymbol{x}}^{\mathrm{T}})$ for the *estimation error* $\tilde{\boldsymbol{x}} = \hat{\boldsymbol{x}}(\boldsymbol{y}) - \boldsymbol{x}$ of *any* Bayesian estimator. This \"any\" is in contrast to the traditional frequentist Cramer-Rao bound. 

A popular performance bound is the van-Tree-Cramer-Rao (Bayesian Cramer-Rao) bound which is the Bayesian version of the traditional Cramer-Rao bound. It is a relative of the family of Weiss-Weinstein bounds, which in turn is a subclass of the family of Bayesian lower bounds. With these bounds it is possible to compare different Bayesian estimators. Note that $\tilde{\boldsymbol{x}}\tilde{\boldsymbol{x}}^{\mathrm{T}}$ is the square-error loss  that provides the minimum-mean-square-error (MMSE) estimator. Hence, all other Bayesian estimators are worse with respect to  loss $\tilde{\boldsymbol{x}}\tilde{\boldsymbol{x}}^{\mathrm{T}}$ than the MMSE estimator (cf. [Algebraic vs. Frequentist vs. Bayesian Inference]({% post_url 2014-03-18-inverse-problems %})). 

# Bayesian Lower Bounds

Let there be a *score function* $\boldsymbol{g}(\boldsymbol{x},\boldsymbol{y})$  such that 

1.  $\mathrm{E} (\boldsymbol{g}(\boldsymbol{x},\boldsymbol{y})\boldsymbol{g}^{\mathrm{T}}(\boldsymbol{x},\boldsymbol{y}))$ is a non-singular matrix,
2.  $\mathrm{E}_{\boldsymbol{x}} (\boldsymbol{g}(\boldsymbol{x},\boldsymbol{y})) = \boldsymbol{0}$ .

According to \[WW88\], \[Xav13\], and \[VB07\],

\\\[\\mathrm{E}(\\tilde{\\boldsymbol{x}}\\tilde{\\boldsymbol{x}}^{\\mathrm{T}}) \\succcurlyeq \\boldsymbol{T}\\boldsymbol{G}^{-1}\\boldsymbol{T}^{\\mathrm{T}}\\\]

with

\\\[\\boldsymbol{G} = \\mathrm{E}(\\boldsymbol{g}(\\boldsymbol{x},\\boldsymbol{y})\\boldsymbol{g}^{\\mathrm{T}}(\\boldsymbol{x},\\boldsymbol{y}))\\\]

and

\\\[\\boldsymbol{T} = \\mathrm{E}(\\boldsymbol{x}\\boldsymbol{g}^{\\mathrm{T}}(\\boldsymbol{x},\\boldsymbol{y}))\~.\\\]

The relational operator $\succcurlyeq$ indicates that the difference between left and right hand sides is a positive semi-definite matrix. The expectation is with regard to $\boldsymbol{x}$ and $\boldsymbol{y}$.

Each relative of the familiy of Bayesian bounds is defined by an unique score. The elements of the score $\boldsymbol{g}(\boldsymbol{x},\boldsymbol{y})$ reflect sensitivity regarding the slope of the probability density (probability mass function or probability density function). The higher the mean score, the sharper is the probability density and the lower the  lower bound on the estimation error. 

In \[R+2008\] different Bayesian bounds are presented using an interesting  constrained-optimization approach.

# Weiss-Weinstein Lower Bounds

Element $a$ of $\boldsymbol{g}$ is defined by 

\\\[ \[\\boldsymbol{g}\]\_{a} = \\sqrt{ L(\\boldsymbol{x}+\\boldsymbol{h}\_{a},\\boldsymbol{x},\\boldsymbol{y})} - \\sqrt{L(\\boldsymbol{x}-\\boldsymbol{h}\_{a},\\boldsymbol{x},\\boldsymbol{y}) }  \\\]

 where $\boldsymbol{h}_{a}$ is a *test point. *The likelihood ratio 

\\\[ L(\\boldsymbol{x}\_1,\\boldsymbol{x}\_2,\\boldsymbol{y})   = \\frac{v (\\boldsymbol{x}\_1,\\boldsymbol{y})}{v(\\boldsymbol{x}\_2,\\boldsymbol{y})}   = \\frac{v(\\boldsymbol{x}\_1,\\boldsymbol{y})}{\\tilde{v}(\\boldsymbol{x}\_1,\\boldsymbol{y})}   =   \\frac{\\mathrm{d} P\_{\\boldsymbol{x},\\boldsymbol{y}}^{(1)}}{ \\mathrm{d} P\_{\\boldsymbol{x},\\boldsymbol{y}}^{(2)}} \~,\\\]

where the last term is the Radon-Nikodym derivative. Function $v$ specifies a hybrid density (the marginals are either discrete or continuous \[Xav+13\]).

Note that the original score \[WW88\] is more general where the left square root is substituted by $s\in[0,1)$ and the right square root by $1-s$.

Inserting the score into the Bayesian bounds gives

\\\[ \\boldsymbol{W} = \\boldsymbol{H}\\boldsymbol{J}^{-1}\\boldsymbol{H}^{\\mathrm{T}}  \\\]

with the test-point matrix 

\\\[ \\boldsymbol{H}= \[\\boldsymbol{h}\_1,\\cdots , \\boldsymbol{h}\_N\] \\\]

and \
\\\[ \[\\boldsymbol{J}\]\_{a,b} = 2\\frac{ {\\rho (\\boldsymbol{h}\_{a},-\\boldsymbol{h}\_{b})}   - {\\rho (\\boldsymbol{h}\_{a},\\boldsymbol{h}\_{b})}   }{ {\\rho (\\boldsymbol{h}\_{a},\\boldsymbol{0}\_{})} {\\rho (\\boldsymbol{0}\_{},\\boldsymbol{h}\_{b})} } \\\]

The Bhattacharyya coefficient \[Kai67\] $\rho: \mathbb{R}^N \times \mathbb{R}^N \to [0,1]$ is \
\\\[ \\rho (\\boldsymbol{h}\_{a},\\boldsymbol{h}\_{b})  =   \\mathrm{E} \\left( \\frac{\\sqrt{v\_{\\boldsymbol{x}, \\boldsymbol{y} }(\\boldsymbol{x} + \\boldsymbol{h}\_a,\\boldsymbol{y})v\_{\\boldsymbol{x}, \\boldsymbol{y} }(\\boldsymbol{x} - \\boldsymbol{h}\_b,\\boldsymbol{y})}}{v\_{\\boldsymbol{x}, \\boldsymbol{y} }(\\boldsymbol{x},\\boldsymbol{y})}  \\right) \~. \\\]

Test points and hence test-point-matrices are abitrary with two exceptions \[Xav+13\]: 

1.  Finite supports of probability distributions induces  box conditions on the test points. 
2.  If the states are in a finite alphabet, the test points are in a finite alphabet as well (detection). 

Since different test points give different lower bound, the *optimal test point* gives the maximum lower bound. If all probability distributions are Gaussian, then the optimal test point approaches  $\boldsymbol{0}$. 

The Weiss-Weinstein bound exists for 

1.  Absolute continuous distributions,
2.  Discrete distributions,
3.  Singular continuous distributions where the  marginals of $\boldsymbol{x}$ are of pure (1) or (2).

Thus, the Weiss-Weinstein bound exists for discrete probability distributions and probability distributions of finite support (e.g. uniform distribution). 

# Bayesian Cramer-Rao Lower Bounds

If the test points $\boldsymbol{H} \to \boldsymbol{0}$, then the Weiss-Weinstein bound becomes the Bayesian Cramer Rao bound \[Xav13\]. 

The score is defined by

\\\[\\boldsymbol{g} =  \\partial\_{\\boldsymbol{x}} \\ln  f(\\boldsymbol{x},\\boldsymbol{y}) \~,\\\]

hence,

\\\[ \\mathrm{E} ( \\tilde{\\boldsymbol{x}}\\tilde{\\boldsymbol{x}}^{\\mathrm{T}} ) \\succcurlyeq  \\boldsymbol{W} = \\left(-  \\mathrm{E} \\partial\_{\\boldsymbol{x}}^2 \\ln f(\\boldsymbol{x},\\boldsymbol{y})  \\right)^{-1}\~, \\\]

where  $\partial_{\boldsymbol{x}} = \partial / \partial \boldsymbol{x}$ denotes the gradient. Observe that 

\\\[ \\mathrm{E} (\\partial\_{\\boldsymbol{x}}^2 \\ln f(\\boldsymbol{x},\\boldsymbol{y}) ) = \\underbrace{\\mathrm{E}(\\partial\_{\\boldsymbol{x}}^2 \\ln f(\\boldsymbol{y}\|\\boldsymbol{x}) ) }\_{\\text{due to noise}} + \\underbrace{\\mathrm{E}(\\partial\_{\\boldsymbol{x}}^2 \\ln f(\\boldsymbol{x}) )  }\_{\\text{prior}} \~.\\\]

The first term on the right side is the negative inverse of the traditional (frequentist) Cramer-Rao bound. 

The Bayesian Cramer-Rao bound exists if

1.   $f(\\boldsymbol{x},\\boldsymbol{y})$ is differentiable,
2.   $\\lim\_{[\\boldsymbol{x}]\_\\ell \\to \\pm \\infty} [\\boldsymbol{x}]\_\\ell f(\\boldsymbol{x}\|\\boldsymbol{y}) = 0$ for all $\\ell = 1, \\cdots , N$ and $\\boldsymbol{y}$.

The Bayesian Cramer-Rao bound does *not* exists for discrete probability distributions (probability mass functions) and probability distributions of finite support (e.g. continuous uniform distribution).

# Take-Home Messages

-   Bayesian bounds are bounds on the mean-square-error matrix of *any* Bayesian estimator (detector)
-   The Cramer-Rao bound is a relative of the familiy of Weiss-Weinstein bounds which is a subclass of the familiy of Bayesian Cramer-Rao bounds.
-   The family of Weiss-Weinstein bounds is parametrized by a test point. The *optimal test point* gives the maximum lower bound.
-   The family of Weiss-Weinstein bounds support probability distributions with *finite support*, e.g. uniform distributions, and *discrete* probability distributions

# ​References

\[Kai67\] T. Kailath. "The divergence and Bhattacharyya distance measures in signal selection." In: IEEE Trans. Commun. Technol. 15.1 (Feb. 1967), pp. 52--60. 

\[R+2008\] A. Renaux, P. Forster, P. Larzabal, C. Richmond, and A. Nehorai, \"A fresh look at the bayesian bounds of the Weiss-Weinstein family\", *IEEE* Transactions on Signal Processing, Volume: 56, Issue: 11, Nov. 2008, pp. 5334-5352

\[VB07\] H. L. Van Trees et al. Bayesian bounds for parameter estimation and nonlinear filtering/tracking. IEEE Press, 2007.

\[WW88\]  A. J. Weiss et al. "A general class of lower bounds in parameter estimation." In: IEEE Trans. Inf. Theory 34.2 (1988), pp. 338--342. 

\[Xav13\] Xaver, F., Decentralized localization based on wave fields --- Particle filters and Weiss-Weinstein error bounds, Institute of Telecommunications, Vienna University of Technology, 2013

\[Xav+13\]  Xaver, F., P. Gerstoft, G. Matz, and C.F. Mecklenbräuker, "Analytic Sequential Weiss-Weinstein Bounds, IEEE Transactions on Signal Processing, vol. 61, no. 20, pp. 5049-5062, 2013.

