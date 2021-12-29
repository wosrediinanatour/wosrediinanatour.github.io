---
layout: post
usemathjax: true
lang: en
---

# Three Paradigmata of Inverse Problems: Algebraic vs. Frequentist vs. Bayesian Inference

Consider a sensor that is measuring physical parameters like temperature, pressure, or velocity. This sensor introduces perturbations and noise and, hence, one key-problem is the optimal *inference* of parameter $\boldsymbol{x}$ using measurement  $\boldsymbol{y}$ from the sensor.  Such inference of parameters is used in many research areas like telecommunications, finances, medizine, or social science.  When we speak about inference we have to ask: What is optimal inference? Which criterion shall we use? A natural criterion is the inference error. But how shall the error be defined? In the sequel, I address these main questions and hope to give a good overview. 

# The Forward Model Describes the Sensing

First, we need a model of the measurement procedure. The *forward model* maps the parameter $\boldsymbol{x}$ to the measurement $\boldsymbol{y}$, namely,


\\\[\\boldsymbol{y} = \\boldsymbol{y}(\\boldsymbol{x})\~.\\\]

 With an abuse of notation, we use $\boldsymbol{y}$ for a vector whereas $\boldsymbol{y}(\boldsymbol{x})$ is the vector-valued function. 

I compare inference approaches for three distinct models:

-   Both, parameter and measurement are deterministic.
-   The parameter is deterministic, but the measurement is random. The randomness is introduces by noise or lack of knowledge. 
-   Both, parameter and measurement are random. This allows us to model statistical knowledge of the parameter. 

Usually, *estimation* refers to the inference of real- or complex-valued parameters from real- or complex-valued measurements, respectively, whereas *detection* uses real- or complex-valued measurements to infer parameters (symbols) in a finite alphabet. 

# The Loss Describes the Inference Error

A *loss function *defines the inference error between estimate $\hat{\boldsymbol{x}}(\boldsymbol{y})$ and the true parameter vector $\boldsymbol{x}$. Popular choices of the loss function are the []{#square-error-loss} square error  

\\\[\\ell^{\\mathrm{SE}}(\\hat{\\boldsymbol{x}},\\boldsymbol{x}) = \|\| \\hat{\\boldsymbol{x}}(\\boldsymbol{y}) - \\boldsymbol{x} \|\|^2\~,\\\]

the hit-or-miss error

\\\[\\ell^{\\mathrm{HoM}}(\\hat{\\boldsymbol{x}},\\boldsymbol{x}) =1\_{\|\| \\hat{\\boldsymbol{x}}(\\boldsymbol{y}) - \\boldsymbol{x} \|\| \> \\epsilon}\~, \\quad \\epsilon \> 0\~,\\\]

for a continuous random vector $\boldsymbol{x} \in \mathbb{R}^N$ or

\\\[\\ell^{\\mathrm{HoM}}(\\hat{\\boldsymbol{x}},\\boldsymbol{x}) = 1\_{ \\hat{\\boldsymbol{x}}(\\boldsymbol{y}) \\neq \\boldsymbol{x} } \\\]

for $\boldsymbol{x}$ in a finite alphabet, and the absolute error

\\\[\\ell^{\\mathrm{abs}}(\\hat{\\boldsymbol{x}},\\boldsymbol{x}) = \\sum\_{n=1}^{N} \| \\hat{x}\_n - x_n \|\~,\\\]

where *indicator function* $1_{x}$ is unity if $x=$ true and zero if $x=$ false. Scalar $x_n$ is the $n$th element of $\boldsymbol{x}$.

The loss function weights the error and should be carefully chosen. The square-error loss weights great errors more than small errors, the hit-or-miss loss weights errors independet of the magnitude, and the absolute-error loss weights linear with the error. John D. Cook [presented](http://www.johndcook.com/blog/2010/11/29/where-to-wait-for-an-elevator/) a nice example.  

There are three main motivations of the square-error loss:

-   The square of a signal represents power, here it is the power of the error.
-   The square stems from the exponent of the Gaussian probability density (however often no Gaussian assumption is made).
-   A closed-form solution often exists

# What is Optimal?

There is no unique optimality criterion for an estimator or detector. Therefore, we focus on a popular criterion. We are seeking for an estimator $\hat{\boldsymbol{x}}(\boldsymbol{y})$ that minimizes the *risk*, 

\\\[ \\hat{\\boldsymbol{x}} = \\arg\\min\_{\\boldsymbol{x}} R\~.\\\]

In short, the risk is the expected loss. The word *expected* has  different meanings for different probabilistic descriptions of the forward model.

# Algebraic Inference

 First, we consider a deterministic parameter $\boldsymbol{x}$ and a deterministic forward model $\\boldsymbol{y}(\\boldsymbol{x})$. If the mapping $\\boldsymbol{y}(\\boldsymbol{x})$  is bijective, then an *inverse* exists and $\\boldsymbol{x} = \\boldsymbol{y}^{-1}(\\boldsymbol{y})$. 

![](/drupal7/sites/default/files/inverse.png)

If the mapping $\boldsymbol{y}(\boldsymbol{x})$ is not bijective, then we search for a parameter $\boldsymbol{x}$ that fulfills our criterion of a minimal *risk function*  $R = \ell$.  One prominant loss  is the square error $\ell^{\mathrm{SE}} (\hat{\boldsymbol{x}},\boldsymbol{x} )$ between estimate $\hat{\boldsymbol{x}}$ and the true parameter $\boldsymbol{x}$.

An estimator is obtained by 

\\\[\\hat{\\boldsymbol{x}} = \\arg\\min\_{\\boldsymbol{x}} R = \\arg\\min\_{\\boldsymbol{x}} \\ell(\\hat{\\boldsymbol{x}},\\boldsymbol{x})\~.\\\]

The result for $\ell = \ell^{\mathrm{SE}}$ is a *least square* solution using the pseudo-inverse. Replacing the $L_2$-norm in $\ell^{\mathrm{SE}}(\boldsymbol{x},\boldsymbol{x})$ by a wighted norm leads to *weighted least-square* solutions. 

# Frequentist Inference

We could model the measurements $\boldsymbol{y}$ as radom vectors, i.e. the forward mapping $\boldsymbol{y}(\boldsymbol{x})$ is a random function. A simple example is additive noise $\boldsymbol{v}$, 

\\\[\\boldsymbol{y} = \\boldsymbol{x} + \\boldsymbol{v}\~,\\\]

where $\boldsymbol{v}$ is a random vector and this implies a random measurement vector $\boldsymbol{y}$. 

![](/drupal7/sites/default/files/frequentistInference.png)

We use the same approach as in the previous section and define the *frequentist risk* as the expected loss, i.e. $R = \mathrm{E}_{\boldsymbol{y}}(\ell)$.  The estimate ist

\\\[\\hat{\\boldsymbol{x}} = \\arg\\min\_{\\boldsymbol{x}} R = \\arg\\min\_{\\boldsymbol{x}} \\mathrm{E}\_{\\boldsymbol{y}}(\\ell)\~.\\\]

If we use the square-error loss for a  continuous random parameter  $\boldsymbol{x}$ and an unbiased estimator exists, then we obtain the *minimum variance unbiased* (MVU) estimator. Using the hit-or-miss loss, we obtain the *maximum likelihood* (ML) estimator $\hat{\boldsymbol{x}} = \arg\max_{\boldsymbol{x}} v(\boldsymbol{y}\|\boldsymbol{x})$. Here, *likelihood function*  $v(\boldsymbol{y}\|\boldsymbol{x})$ is the conditional probability density function or probability mass function of $\boldsymbol{y}$ given $\boldsymbol{x}$.

# Bayesian Inference

Furthermore, our belief in a distribution of $\boldsymbol{x}$ influences our inference. The *Bayesian risk* is defined as the expectation of a loss function with regard to $\boldsymbol{y}$ *and* $\boldsymbol{x}$. That is,

\\\[\\hat{\\boldsymbol{x}} = \\arg\\min\_{\\boldsymbol{x}} R = \\arg\\min\_{\\boldsymbol{x}} \\mathrm{E}\_{\\boldsymbol{x},\\boldsymbol{y}}(\\ell) \~.\\\]

 

![](/drupal7/sites/default/files/BayesianInference.png)

 

The square-error loss leads to the *minimum mean square-error* (MMSE) solution $\hat{\boldsymbol{x}} = \mathrm{E}(\boldsymbol{x}\|\boldsymbol{y})$, the hit-or-miss  loss to the *maximum a-posteriori *(MAP) solution $\hat{\boldsymbol{x}} = \arg\max_{\boldsymbol{x}} v(\boldsymbol{x}\|\boldsymbol{y})$, and the absolute-error loss to the *median* solution $\hat{\boldsymbol{x}} = \mathrm{median}(\boldsymbol{x}\|\boldsymbol{y})$.

# Performance Bounds for Estimators

In frequentist and Bayesian estimation, performance bounds are used to lower bound the square-error loss, if no analytic solution of an estimator exists. Prominent performance bounds are:

-   Frequentist\'s lower bounds
    -   Cramer-Rao 
    -   Bhattacharyya 
    -   Barakin 
-   Bayesian lower bounds
    -   Bayesian (van-Trees)-Cramer-Rao 
    -   Bayesian Bhattacharyya 
    -   Bobrovski-Zakai 
    -   Weiss-Weinstein
-   Ziv-Zakai bounds (Bayesian)

 

# Bibliography


 -   *Bayesian Bounds for Parameter Estimation and Nonlinear Filtering/Tracking*  by Harry L. Van Trees, Kristine L. Bell, 2007, Wiley, ISBN 0-47-012095-9
-   *Fundamentals of Statistical Signal Processing: Estimation Theory* by Steven M. Kay, 1993, Prentice Hall, [ISBN 0-13-345711-7](http://en.wikipedia.org/wiki/Special:BookSources/0133457117)
 -   *Fundamentals of Statistical Signal Processing: Detection Theory*  Steven M. Kay, 1998, Prentice Hall, [ISBN 0-13-504135-X](http://en.wikipedia.org/wiki/Special:BookSources/013504135X)
 -   *Lecture Notes on Bayesian Estimation and Classification* by Mario A. T. Figueiredo (<http://www.lx.it.pt/~mtf/learning/Bayes_lecture_notes.pdf>)



