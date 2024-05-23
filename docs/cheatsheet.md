## When to Use NP-Methods:
- When assumptions for parametric methods are violated and a named distribution must be assumed (hence NP is often called distribution-free statistics).
- Common reasons for assumption violations include outliers, small sample size (n), and lack of normality.
  - Outliers can sometimes be removed or a transformation can be performed.
  - Small sample size isn’t easy to fix.

## Binomial Based Tests:
### Hypothesis Test for the Median:
- Statistic for Hypothesis: Uses the median, $\Theta_{0}$ vs $ m $.
- Note: If any $X_{i} = \Theta_{0} $, remove $\Theta_{0} $.
- Test Statistic, $B+$: Number of observations greater than $ \Theta_{0}$.
- $B+$ follows a Binomial distribution $B+ \sim Bin(n, \frac{1}{2})$.
- P-value: $P(x \leq B+) = \sum_{i=0}^{B+} P(X \leq B_{i})$.
- P-value direction depends on $H_{a}$.

#### Assumptions:
- Random sample from a continuous distribution.

### Normal Approximation to the Binomial Test:
- Statistic for Hypothesis: Uses the median, $\Theta_{m}$  vs $\Theta^{o}_{m}$  , with appropriate n, using the central limit theorem.
- $\sum \Beta_{i}$ follows a normal distribution $\sum \Beta_{i} \sum N(np, np(1-p))$.
- Test Statistic, $\Z : \Z = \frac{S - n(.5)}{\sqrt{n(.25)}}$.
- $S = B+$.
- P-value: $P(Z < Z_{S})$, direction based on $H_{a}$.

#### Assumptions:
1. Random Sample.
2. At least 5 observations above or below $\Theta_{0}$ .

### Permutation Test for Two Groups:
- Statistic for Hypothesis: Uses the CDF, $F_{1}(x)$ vs  $F_{2}(x)$.
- Interpretation of $H_{a} : F_{1}(x) \leq F_{2}(x)$, group 1 tends to be larger than group 2.
- Test Statistic: $D_{obs}: D_{obs} = \theta_{1} - \theta_{2}$.
- P-value: $\frac{\# \ D_{i} \geq D_{obs}}{(m+n)!/(m!n!)}$.

#### Assumptions:
1. Random Sample.
2. Identical distribution for both groups.

### Wilcoxon Rank Sum (WRS) Test:
- Statistic for Hypothesis: Uses the CDF, $F_{1}(x)$ vs $F_{2}(x) $.
- Null: $H_{0}: F_{1}(x) = F_{2}(x) $.
- Used to determine the difference between two groups using rank instead of actual value.
- Test Statistic, $W_{obs}$: Sum of ranks in group 1.
- P-value for $H_{a1}$ : $P(W_{i} \geq W_{obs}) $.
- P-value for $H_{a2}$: $P(W_{i} \leq W_{obs})$.
- P-value for $ H_{a3} $: $ 2 \times \min(\text{both one-sided p-values}) $.

#### Assumptions:
1. Random Sample.
2. Identical distribution for both groups.
