---
layout: post
usemathjax: true
lang: en
title: Sequential Weiss-Weinstein Bounds
---

# Sequential Weiss-Weinstein Bounds

Sequential Bayesian estimation and detection \[VB07\] inferes temporal evolving *states* in contrast to non-evolving parameters. The sequential Weiss-Weinstein bound is a lower bound on the mean-square-error matrix of *any* Bayesian estimator. This article is based on  [Bayesian Cramer-Rao Bounds and Weiss-Weinstein Bounds]({% post_url 2014-03-19-performance_bounds_for_bayesian_estimators %}) about non-sequential Bayesian inference and performance bounds. Note that here only a short overview is possible and hence I neglect many details that can be found in one of the references. 

# Sequential Bayesian Inference

Compared to the non-sequential inference of parameters, in the sequential case the *measurement model* is added by a *state-transition model*. We obtain the *state-space model *

\\\[\\boldsymbol{y}\_k = C_k(\\boldsymbol{x}\_k)\~,\\\]

\\\[\\boldsymbol{x}\_{k+1} = \\Phi_k(\\boldsymbol{x}\_k)\~,\\\]

where a sensor modeled by a probabilistic mapping $C_k$ measures a random state $\boldsymbol{x}_k$ at time $k \in \mathbb{N}_0$. Initial state $\boldsymbol{x}_0$ evolves over time according the state-transition function $\Phi_k$.  The Bayesian modelling demands for  following probability densities (probability mass functions or probability density functions):

\\\[ v(\\boldsymbol{x}\_0), \\quad v(\\boldsymbol{x}\_{k+1}\|\\boldsymbol{x}\_k),\\quad v(\\boldsymbol{y}\_k\|\\boldsymbol{x}\_k) \~.\\\]

The sequential estimator $\hat{\boldsymbol{x}}_k(\boldsymbol{y}_k)$ tries to infer state $\boldsymbol{x}_k$ using measurements $\boldsymbol{y}_k$.  The mean-square-error matrix $\mathrm{E}(\tilde{\boldsymbol{x}}_k\tilde{\boldsymbol{x}}_k^{\mathrm{T}})$ is defined as the *estimation error* $\tilde{\boldsymbol{x}}_k = \hat{\boldsymbol{x}}_k(\boldsymbol{y}_k) - \boldsymbol{x}_k$ at time $k$.

One prominant relative of the family of sequential Weiss-Weinstein bounds \[RO04, Xav+13,Xav13\] is the sequential Bayesian Cramer-Rao bound \[Tic+98\].

# Sequential Weiss-Weinstein Bound

The sequential Weiss-Weinstein bound \$ \\boldsymbol{W}\_k\$ at $k$ is a lower bound of the mean-square-error matrix of any Bayesian estimator \
\\\[ \\mathrm{E}(\\tilde{\\boldsymbol{x}}\\tilde{\\boldsymbol{x}}^{\\mathrm{T}}) \\succcurlyeq \\boldsymbol{W}\_k = \\boldsymbol{H}\_k \\boldsymbol{J}\_{k}^{-1} \\boldsymbol{H}\_k^{\\mathrm{T}} \\\]\
with following recursion\
\\\[ \\boldsymbol{A}\_{k} =  \\boldsymbol{D}\_{k+1}^{11} - \\boldsymbol{D}\_{k+1}^{10}  \\boldsymbol{A}\_{k-1}^{-1} \\boldsymbol{D}\_{k+1}^{01}\~, \\\]\
\\\[  \\boldsymbol{J}\_{k+1}  =      \\boldsymbol{D}\_{k+1}^{22} - \\boldsymbol{D}\_{k+1}^{21} \\boldsymbol{A}\_{k}^{-1} \\boldsymbol{D}\_{k+1}^{12}\~. \\\]    

The relational operator $\succcurlyeq$ indicates that the difference between left and right hand sides is a positive semi-definite matrix. Every element of \$ \\boldsymbol{D}\_{k+1}^{ij}\$ uses the Bhattacharyya coefficient $\rho$ (see elements of $\boldsymbol{J}$ in [Bayesian Cramer-Rao Bounds and Weiss-Weinstein Bounds]({% post_url 2014-03-19-performance_bounds_for_bayesian_estimators %}) for details) that depends on the probability densities presented above. The columns of $\boldsymbol{H}_k$ are test points. They are abitrary with two exceptions:

1.  Finite supports of probability distributions induces  box conditions on the test points. 
2.  If the states are in a finite alphabet, the test points are in a finite alphabet as well (sequential detection). 

For linear state-space models, the bound simplifies to \
\\\[ \\boldsymbol{W}\_k = \\boldsymbol{H}\_k \\boldsymbol{J}\_{k}^{-1} \\boldsymbol{H}\_k^{\\mathrm{T}} \\\] \
with\
\\\[ \\boldsymbol{J}\_{k+1} =      \\boldsymbol{D}\_{k+1}^{22} - \\boldsymbol{D}\_{k+1}^{21} ( \\boldsymbol{D}\_{k+1}^{11} + \\boldsymbol{J}\_k  - \\boldsymbol{B}\_k^{11} )^{-1} \\boldsymbol{D}\_{k+1}^{12} \~.   \\\]

# Facts

-   The SWW bound is a generalization of the SCR bound \[RO04,Xav+13,Xav13\]
-   SWW bounds support any type of probability distribution with density \[Xav+13,Xav13\], i.e. probability density function and probability mass function 
-   Finite supports of probability distributions induces  box conditions on test-points. Discrete random states induce test points that are in a finite alphabet \[Xav+13,Xav13\]. 
-   Linear state-space model \[Xav+13,Xav13\]: 
    -   Analytic solutions exist for various densities 
    -   Solutions have the same structure 
    -   The computational effort stays constant in time
-   Non-linear state-space model \[Xav+12\]: 
    -   There is no general analytic solution 
    -   Models with continuous random states *and* discrete random states from categorical densities have closed-form solutions. 
    -   The computational effort is quadratic in time

# References

\[RO04\]  Rapoport, I. and Y. Oshman  "A new estimation error lower bound for interruption indicators in systems with uncertain measurements". In: *IEEE Trans. Inf. Theory *50.12, pp. 3375--3384, 2004

\[Tic+98\] Tichavsky, P., C. H. Muravchik, and A. Nehorai . "Posterior Cramer-Rao bounds for discrete-time nonlinear filtering". In: *IEEE Trans. Signal Process. *46.5, pp. 1386--1396, 1998

\[VB07\] H. L. Van Trees et al. Bayesian bounds for parameter estimation and nonlinear filtering/tracking. IEEE Press, 2007.

\[WW88\] A. J. Weiss et al. "A general class of lower bounds in parameter estimation." In: IEEE Trans. Inf. Theory 34.2 (1988), pp. 338--342. 

\[Xav+12\]  Xaver, F., G. Matz, P. Gerstoft, and N. Görtz, "Localization of acoustic sources utilizing a decentralized particle filter", ***Proc. 46th Asilomar Conf. Signals, Syst., Comput.*, Pacific Grove, CA, Nov., 2012.

\[Xav13\] Xaver, F., Decentralized localization based on wave fields --- Particle filters and Weiss-Weinstein error bounds: Institute of Telecommunications, Vienna University of Technology, 2013

\[Xav+13\]  Xaver, F., P. Gerstoft, G. Matz, and C.F. Mecklenbräuker, "Analytic Sequential Weiss-Weinstein Bounds", *IEEE Transactions on Signal Processing*, vol. 61, no. 20, pp. 5049-5062, 2013.

