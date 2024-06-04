[![Tests](https://github.com/ggsmith842/lawrence/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/ggsmith842/lawrence/actions/workflows/main.yml)

<picture align="left">
  <source media="(prefers-color-scheme: dark)" srcset="https://github.com/ggsmith842/lawrence/blob/main/static/Lawrence Banner.png">
  <img alt="Lawrence Logo" src="https://github.com/ggsmith842/lawrence/blob/main/static/Lawrence Banner.png">
</picture>

----
# Cmd Line Probability in Ocaml
*Your success will be proportioned to the amount of mental effort you devote to it. - T.E. Lawrence*

## Overview
Lawrence is a command-line tool focused on providing a quick way to compute values related to counting, probabilities, and sampling.

## Purpose
Provide a simple tool for those learning probability and statistics that can be executed in the terminal in an interactive session or as a standalone command.


## Features

### Counting Tools
- `perm -n -k` Calculate Permutations P(n, k)
- `comb -n -k` Calculate Combinations C(n, k)
- `partitions -n` Find Partitions of an Integer n

### Sampling
- `findn -m -p` Finding Sample Size for Estimating a Population Proportion

### Random Variables
- `expval(m, v)` Expected Value Calculation

### Probabilities
- `single-event(a)` Compute the probability of a single event
- `conditional(a, b)` <eventA> <eventB>  Calculate conditional probability P(A|B)
- `joint(a, b)` <eventA> <eventB>        Compute joint probability P(A and B)

## Contributing
We welcome contributions from the community! If you find a bug or have a feature request, please open an issue on GitHub. To contribute code, fork the repository, create a new branch, and submit a pull request with your changes.

## License
This library is licensed under the MIT License. See the [LICENSE](https://github.com/ggsmith842/lawrence/blob/main/LICENSE) file for more details.
