---
layout: post
usemathjax: true
lang: en
title: Games with Two Dice and the Double Rule
---

# Games with Two Dice and the Double Rule 

Some days ago I played [Monopoly](https://en.wikipedia.org/wiki/Monopoly_(game)), a board game that is played using two dice. Afterwards I was eager to calculate the probability that a player arrives at one of the streets. I started by computing the probabilities to roll numbers. This is not as trivial as you might guess, because there are rules for doubles, e.g. $(1,1), (2,2)...(6,6).$  Later I realized that there are very good internet resources on Monopoly by [J. Bewersdorff](http://www.bewersdorff-online.de/monopoly/) including a graphical simulation. It shows that the probability of arriving a particular street is close to uniform after many rounds. Except fields after the jail and special non-street fields. If you want to know more about Monopoly look at \[1,German\], Bewersdorff\'s book [\"Glück, Logik und Bluff: Mathematik im Spiel - Methoden, Ergebnisse und Grenzen\"](http://www.bewersdorff-online.de) \[2, German\], or the bachelor thesis \"Monopoly und Markow-Ketten\" by Julia Tenie \[3, German\]. There is also a \"FAQ\" about probabilities of throwing dice \[4, English\] and an article at Wolfram\'s Mathworld on computing the probability of the points using several dice \[5, English\].

In what follows, I will address dice games using two dice with a double rule. Particularly, I will answer following questions:

-   What is the *probability* of particular points (sum) of two dice using a double rule?
-   What is *expected* number of points (sum) of two dice using a double rule? What is different compared to without double rule?

I use Monopoly\'s *double rule*:

1.  If a player rolls a double, roll the dice again and add the new result to the previous result.
2.  If a player rolls a double three times in a row, your turn is over. 

*If you are only interested in the probabilities, then jump to Tables I and II.* If you are interested in the theory in addition to the probabilities, then you will also find the answer of following question:

-   How are the probability masses (probability mass function) defined? 

## One Die 

The probability rolling a number by one die is 1/6, i.e. the probability of one point $$P(1 \text{ point}) = P(2\text{ points}) = \cdots = P(6\text{ points}) = 1/6.$$ or defining the probability mass function $$p(x) := P(x \text{ points}) = \begin{cases}1/6, & x \in \{1,\cdots, 6\}, \\ 0, & \text{else}, \end{cases}$$ where $p(x)$. The distribution is termed uniform distribution. 

## Two Dice

For our purpose, we will compute the probabilities by hand. In Table I, $p(y)$ and $p(\tilde{y})$ and its computation is shown, where $\tilde{y}$ is in $\{\text{double}, 3, \cdots, 11\}$. (Two dice are statical independent. Thus, the sum of the two-dice $y = x_1 + x_2$ is a convolution, $p(y) = (p(x) \star p(x))(y)$. The convolution of two uniform probability mass function is a triangle like function, cf. Table I.)

Variable $\tilde{y}$ combines the six doubles $(1,1),\cdots, (6,6)$ to one element \"double\". Note that $p(\tilde{y})$ is somehow a punctured  $p(y)$. 

| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| Sum points of both dice | Points of both dice                                 | Probability of points $y$ | Probability of points $\tilde{y}$ |
|                         |                                                     |                           |                                   |
| $y$, $\tilde{y}$        | $(x_1, x_2)$                                        | $p(y)$                    | $p(\tilde{y})$                    |
| --------------------- | ------------------------------------- | -------------------------------------- |
| double                  | $(1,1), (1,2), \cdots, (2,1), (2,2), \cdots, (6,6)$ |                           | $6\times 1/36 = 1/6$              |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $2$                     | double $(1,1)$                                      | $1/36$                    |                                   |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $3$                     | $(1,2), (2,1)$                                      | $1/36+1/36=1/18$          | $1/18$                            |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $4$                     | $(1,3),(3,1)$, double $(2,2)$                       | $1/12$                    | $1/18$                            |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $5$                     | $(1,4),(4,1),(2,3),(3,2)$                           | $4\times 1/36=1/9$        | $1/9$                             |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $6$                     | $(1,5),(5,1),(2,4),(4,2)$, double $(3,3)$           | $5\times1/36$             | $1/9$                             |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $7$                     | $(1,6),(6,1),(2,5),(5,2),(3,4),(4,3)$               | $6\times1/36=1/6$         | $1/6$                             |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $8$                     | $(2,6),(6,2),(3,5),(5,3)$, double $(4,4)$           | $5/36$                    | $1/9$                             |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $9$                     | $(3,6),(6,3),(4,5),(5,4)$                           | $1/9$                     | $1/9$                             |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $10$                    | $(4,6),(6,4)$, double $(5,5)$                       | $1/12$                    | $1/18$                            |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $11$                    | $(6,5),(5,6)$                                       | $1/18$                    | $1/18$                            |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |
| $12$                    | double $(6,6)$                                      | $1/36$                    |                                   |
| ----------------------- | --------------------------------------------------- | ------------------------- | --------------------------------- |

Table I: Probabilities of the points of two dice. 

## Two Dice and the Property 1 of the Double Rule

We start with Property 1 of the double rule for up to $2$ rolls, i.e. the result is

$$z = \begin{cases}y_1, & \text{no double},\\y_1+y_2 , & \text{else},\end{cases},$$

where $y_1$ and $y_2$ are the points of the first and the third roll, respectively.

Then 

$$p_z(2) = p_{\tilde{y}} (2) + (1/36)\left[  p_{y} (0) +  p_{ {y}} (-2) +  p_{ {y}} (-4) +  \cdots  \right].$$

(It will become more clear, if you write the probability mass onto a tableau.) Let us generalize $p_z(2)$ to all possible results,

$$p_z(z) = p_{\tilde{y}} (z) + (1/36)\left[  p_{ {y}} (z-2) +  p_{ {y}} (z-4) +  \cdots + p_{ {y}} (z - 12)  \right] = p_{\tilde{y}} (z) + (1/36)\sum_{i=1}^{6}  p_{ {y}} (z-2i).$$

We further obtain the result of up to $3$ rolls,  

$$z = \begin{cases}y_1, & \text{no double},\\y_1+y_2, & \text{first roll: double, rest: no doubles},\\y_1+y_2 + y_3, & \text{else},\end{cases}$$

where $y_1$ to $y_3$ are the points of the first to the third roll.

The probability mass function $p(z)$ becomes

$$p(z) = p_{\tilde{y}}(z) + 1/36 \sum_{i=1}^{6}p_{\tilde{y}}(z-2i) + 1/36^2 \sum_{i=1}^{6}\sum_{j=1}^{6}p_{y}(z-2i-2j) = P(z).$$

If Event A describes one throw without double, Event B is a double inducing a second throw without double, and Event C  is a double causing a second double causing a third throw, then the probability mass function is identical to 

$$p(z) = \underbrace{p_{z| \text{A}}(z) }_{6/5 p_{\tilde{y}}(z)} \underbrace{ P(\text{A}) }_{5/6} +  \underbrace{ p_{z| \text{ B}}(z) }_{ 6/5\sum_{i=1}^{6}p_{\tilde{y}}(z-2i)} \underbrace{ P(\text{B}) }_{1/36 \times 5/6} +  \underbrace{ p_{z| \text{C}}(z) }_{\sum_{i=1}^{6}\sum_{j=1}^{6}p_{y}(z-2i-2j)} \underbrace{ P(\text{C}) }_{1/36 \times 1/36 \times (1/6+5/6)},$$

which is the [law of total probability](https://en.wikipedia.org/wiki/Law_of_total_probability) (Events A, B, and C are partitions of the sample space).

## Two Dice and the Double Rule

Eventually, we derive the probability mass function of two dice plus the double rule, i.e.  the third double causes a turn over. We define the result by $$\tilde{z} = \begin{cases}y_1, & \text{no double},\\y_1+y_2, & \text{first roll: double, rest: no doubles},\\y_1+y_2 + y_3, & \text{first and second roll: doubles, rest: no double},\\ \text{turn over} = y_1 + y_2 + y_3, & \text{three doubles}.\end{cases}$$ 

The probability mass function is 

$$p(\tilde{z}) = \begin{cases} p_{\tilde{z}}(\tilde{z}),& \text{less than three doubles},\\ 6^3 \times 1/36^3 = 1/6^3, & \text{turn over}, \end{cases}$$

where 

$$p_{\tilde{z}}(z) = p_{\tilde{y}}(z) + 1/36 \sum_{i=1}^{6}p_{\tilde{y}}(z-2i) + 1/36^2 \sum_{i=1}^{6}\sum_{j=1}^{6}p_{\tilde{y}}(z-2i-2j) = P(z).$$

Observe the tilde in the last probability mass function of the last sum. The probability of a turn over might be much higher than expected. I have plotted the probability mass function in Table II.

| --------------------- | ------------------------------------- | -------------------------------------- |
| Points $\tilde{z}$    | Probability of points $p_{\tilde{z}}$ | Probability of points $p_{ \tilde{z}}$ |
|                       | (fraction)                            | (floating point)                       |
| --------------------- | ------------------------------------- | -------------------------------------- |
| turn over             | $1/6^3$                               | $0.00462962963$                        |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $1$, $2$              | $0$                                   | $0$                                    |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $3$                   | $1/18$                                | $0.05555555556$                        |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $4$                   | $1/18$                                | $0.05555555556$                        |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $5$                   | $73/648$                              | $0.112654320987654$                    |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $6$                   | $73/648$                              | $0.112654320987654$                    |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $7$                   | $3997/23328$                          | $0.171339163237311$                    |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $8$                   | $2701/23328$                          | $0.115783607681756$                    |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $9$                   | $703/5832$                            | $0.120541838134431$                    |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $10$                  | $185/2916$                            | $0.0634430727023320$                   |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $11$                  | $797/11664$                           | $0.0683299039780521$                   |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $12$                  | $25/2592$                             | $0.00964506172839506$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $13$                  | $19/1296$                             | $0.0146604938271605$                   |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $14$                  | $77/7776$                             | $0.00990226337448560$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $15$                  | $13/864$                              | $0.0150462962962963$                   |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $16$                  | $79/7776$                             | $0.0101594650205761$                   |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $17$                  | $1/72$                                | $0.0138888888888889$                   |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $18$                  | $23/2592$                             | $0.00887345679012346$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $19$                  | $259/23328$                           | $0.0111025377229081$                   |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $20$                  | $139/23328$                           | $0.00595850480109739$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $21$                  | $77/11664$                            | $0.00660150891632373$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $22$                  | $67/23328$                            | $0.00287208504801097$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $23$                  | $79/23328$                            | $0.00338648834019204$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $24$                  | $1/864$                               | $0.00115740740740741$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $25$                  | $1/648$                               | $0.00154320987654321$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $26$                  | $7/7776$                              | $0.000900205761316873$                 |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $27$                  | $1/864$                               | $0.00115740740740741$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $28$                  | $5/7776$                              | $0.000643004115226338$                 |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $29$                  | $1/1296$                              | $0.000771604938271605$                 |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $30$                  | $1/2592$                              | $0.000385802469135802$                 |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $31$                  | $5/11664$                             | $0.000428669410150892$                 |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $32$                  | $1/5832$                              | $0.000171467764060357$                 |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $33$                  | $1/5832$                              | $0.000171467764060357$                 |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $34$                  | $1/23328$                             | $4.28669410150892e-5$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |
| $35$                  | $1/23328$                             | $4.28669410150892e-5$                  |
| --------------------- | ------------------------------------- | -------------------------------------- |

Table II: Probabilities of the points of two dice using the double rule.

## Expected points of Two Dice with vs. without Double Rule

The expected points without double rule is $$E(y) = \sum_{y=1}^{35} y p(y) = 7,$$ whereas the probability of the result with double rule is $$E(\tilde{z}) = \sum_{\tilde{z}=1}^{35} \tilde{z} p_{\tilde{z}} (\tilde{z})= 8.263\dot{8}.$$ Have you expected such a small difference?

## Number $n$ Dice and the Property 1 of the Double Rule

For up to $n$ rolls (doubles), the result is $$z = \begin{cases}y_1, & \text{no double},\\y_1+y_2, & \text{first roll: double, rest: no doubles},\\y_1+y_2 + y_3, & \text{first and second roll: doubles,  rest: no doubles}, \\ \cdots, & \cdots, \\ y_1 + \cdots + y_n , & \text{else}, \end{cases}$$

where $y_1$ to $y_n$ are the results of the first to the $n$th roll.

The probability mass function $p(z)$ becomes

$$p(z) = p_{\tilde{y}}(z) + 1/36 \sum_{i=1}^{6}p_{\tilde{y}}(z-2i) + 1/36^2 \sum_{i=1}^{6}\sum_{j=1}^{6}p_{\tilde{y}}(z-2i-2j) + \cdots + 1/36^n \sum_{i_1=1}^{6} \cdots \sum_{i_n=1}^{6}p_y(z-2i_1 - \cdots - 2i_n)$$

$$= p_{\tilde{z}| E_1}(z)  P(E_1)  +  p_{\tilde{z}| E_2}(z)  P(E_2)+ \cdots +  p_{ {z}| E_n}(z)  P(E_n) .$$

Events $E_1 = A$, $E_2 = B$, and $E_3 = C$. All other $E_n$ represent the event of $n$ rolls due to the double rule.

## Code

I have developed following Python code to compute Tables I and II. It uses SymPy, a symbolic computation library for Python (compareable with Maxima, Maple, Mathematica,\...). SymPy includes a statistic module. Note that I have mainly used fractions. The probability mass functions (PMF) are implemented by Python\'s dictonary.  The variables\' names correspond to functions introduced in this article. You can easily run the code, if you have Spyder and IPython installed. 

{% highlight python %}
from sympy import *
from sympy.stats import DiscreteUniform, density
from sympy.stats import FiniteRV, P, E
from sympy.mpmath import *
from itertools import product

x, y, z, z_tilde = symbols("x y z z_tilde")


pmf_y = {2: Rational(1,36), 3: Rational(1,18), 4: Rational(1,12),5: Rational(1,9),6: Rational(5,36),7: Rational(1,6),
8: Rational(5,36),9: Rational(1,9),10: Rational(1,12),11: Rational(1,18),12: Rational(1,36)}

# Note that in the following probability mass function double is modelled as 10000
pmf_y_tilde = {3: Rational(1,18), 4: Rational(1,18),5: Rational(1,9),6: Rational(1,9),7: Rational(1,6),
8: Rational(1,9),9: Rational(1,9),10: Rational(1,18),11: Rational(1,18), 10000: Rational(1,6)}


y = FiniteRV("y", pmf_y)
y_tilde = FiniteRV("y_tilde", pmf_y_tilde)

print "p(y):", pmf_y
print "E(y)=", E(y).evalf()

print "sum =", nsum(lambda n: pmf_y.get(n,0),[0,10000])
print "p(x_tilde):", pmf_y_tilde
print "E(y_tilde)=", E(y_tilde).evalf()
print "sum =", nsum(lambda n: pmf_y_tilde.get(n,0),[0,10000])

print "sum (p_tilde(z))=", nsum(lambda z: pmf_y_tilde.get(z,0) + Rational(1,36)*nsum(lambda n: pmf_y_tilde.get(z-2*n,0),[1,6]) + Rational(1,36**2)*nsum(lambda m,n: pmf_y.get(z-2*n-2*m,0),[1,6],[1,6]), [3,36])
print "sum (p_tilde(z_tilde))=", Rational(1,6**3) + nsum(lambda z: pmf_y_tilde.get(z,0) + Rational(1,36)*nsum(lambda n: pmf_y_tilde.get(z-2*n,0),[1,6]) + Rational(1,36**2)*nsum(lambda m,n: pmf_y_tilde.get(z-2*n-2*m,0),[1,6],[1,6]), [3,36])

pmf_z_tilde = {}
# Note that the interval [1,6] is range(1,7)!
print "<thead><tr><th scope=\"col\"> $\\tilde{z}$ </th><th scope=\"col\"> $p_{\\tilde{z}}$ </th><th scope=\"col\"> $p_{\\tilde{z}}$ </th></tr></thead>"

print "<tbody>"
for z in range(1,36):
        p_z_tilde = pmf_y_tilde.get(z,0) + Rational(1,36)*nsum(lambda n: pmf_y_tilde.get(z-2*n,0),[1,6]) +        Rational(1,36**2)*nsum(lambda m,n: pmf_y_tilde.get(z-2*n-2*m,0),[1,6],[1,6])
        p_z_tilde_rational = pmf_y_tilde.get(z,0) + Rational(1,36)* sum( [pmf_y_tilde.get(z-2*n,0) for n in range(1,7)]) + Rational(1,36**2)* sum( [pmf_y_tilde.get(z-2*n-2*m,0) for m,n in product(range(1,7), range(1,7))])
        pmf_z_tilde[z] = p_z_tilde_rational
        print "<tr><td> ${0}$ </td><td> ${1}$ </td><td> ${2}$ </td></tr>". format( str(z) , str(p_z_tilde_rational) , str(p_z_tilde.evalf()))
print "</tbody>"

print "p(z_tilde)=", pmf_z_tilde
z_tilde = FiniteRV("z_tilde", pmf_z_tilde);
print "E(z_tilde)=", E(z_tilde).evalf()
{% endhighlight %}

## References

\[1\] <http://www.bewersdorff-online.de/monopoly/%C2%A0>

\[2\] <http://www.bewersdorff-online.de>

\[3\] <http://www.ruhr-uni-bochum.de/num1/files/theses/ba_tenie.pdf>

\[4\] <http://gwydir.demon.co.uk/jo/probability/calcdice.htm>

\[4\] <http://mathworld.wolfram.com/Dice.html>


