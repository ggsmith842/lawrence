[![Tests](https://github.com/ggsmith842/lawrence/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/ggsmith842/lawrence/actions/workflows/main.yml)

<picture align="left">
  <source media="(prefers-color-scheme: dark)" srcset="https://github.com/ggsmith842/lawrence/blob/main/static/Lawrence Banner.png">
  <img alt="Lawrence Logo" src="https://github.com/ggsmith842/lawrence/blob/main/static/Lawrence Banner.png">
</picture>

----
# Nonparametric Statistics for Ocaml
*Your success will be proportioned to the amount of mental effort you devote to it. - T.E. Lawrence*

## Overview
Nonparametric Statistics is a branch of statistics that makes minimal assumptions about the data. One common reason to use np statistics is when the data does not follow a normal (Gaussian) distribution. The assumption that data is normally distributed is required for many parametric statistical tests, such as Linear Regression. Because of this, nonparametric statistics are often referred to as distribution-free statistics.

Nonparametric statistics are useful when:

- We have a small number of samples.
- We don't know the underlying distribution of the data.

It is important to note that when the assumptions for parametric tests are met, nonparametric tests do not have as much statistical power. Therefore, parametric tests should be relied upon in such cases.

## Features

### Measures of Central Tendancy (in progress)
1. Median: Find the middle value from a list of numeric data. The median is not as easily influenced by outliers.
2. Mode Calculation: Find the mode(s) of a dataset.
3. Quartiles
4. Percentiles

### Statstical Tests (planned)
Rank-based Tests: Perform nonparametric tests such as the Wilcoxon signed-rank test and the Mann-Whitney U test.
1. Wilcoxon Signed-rank test
2. Mann-Whitney U test

### Resampling Methods (planned)
Bootstrap Methods: Implement bootstrap resampling techniques for estimating the distribution of a statistic.

###

## Contributing
We welcome contributions from the community! If you find a bug or have a feature request, please open an issue on GitHub. To contribute code, fork the repository, create a new branch, and submit a pull request with your changes.

## License
This library is licensed under the MIT License. See the [LICENSE](https://github.com/ggsmith842/lawrence/blob/main/LICENSE) file for more details.
