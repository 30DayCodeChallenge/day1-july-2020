# Challenge 1 Day 1

Instructions:

1. Fork this Challenge and make any pushes to that repository, then create a pull request.

2. Use any language you prefer.
3. Include a README.md file to show how to run and compile the code.
4. In your own interest comment your code.
5. In your own interest attach Screenshots for your results.
6. Comment on another person's work for positive growth

## Mini Challenge 1

### Count the number of Duplicates

Write a function that will return the count of **distinct case-insensitive** alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

### Example

"abcde" -> 0 `# no characters repeats more than once`
"aabbcde" -> 2 `# 'a' and 'b'`
"aabBcde" -> 2 `# 'a' occurs twice and 'b' twice (`b`and`B`)`
"indivisibility" -> 1 `# 'i' occurs six times`
"Indivisibilities" -> 2 `# 'i' occurs seven times and 's' occurs twice`
"aA11" -> 2 `# 'a' and '1'`
"ABBA" -> 2 `# 'A' and 'B' each occur twice`

## Mini Challenge 2

John has some amount of money of which he wants to deposit a part `f0` to the bank at the beginning of year `1`. He wants to withdraw each year for his living an amount `c0`.

Here is his banker plan:

- deposit `f0` at beginning of year 1
- his bank account has an interest rate of `p` percent per year, constant over the years
- John can withdraw each year `c0`, taking it whenever he wants in the year; he must take account of an inflation of `i` percent per year in order to keep his quality of living. `i` is supposed to stay constant over the years.
- all amounts `f0`..`fn-1`, `c0`..`cn-1` are truncated by the bank to their integral part
- Given `f0`, `p`, `c0`, `i` the banker guarantees that John will be able to go on that way until the `nth` year.

# Example:

```
f0 = 100000, p = 1 percent, c0 = 2000, n = 15, i = 1 percent
beginning of year 2 -> f1 = 100000 + 0.01*100000 - 2000 = 99000;  c1 = c0 + c0*0.01 = 2020 (with inflation of previous year)
beginning of year 3 -> f2 =  99000 + 0.01*99000 - 2020  = 97970;  c2 = c1 + c1*0.01 = 2040.20
(with inflation of previous year, truncated to 2040)
beginning of year 4 -> f3 =  97970 + 0.01*97970 - 2040  = 96909.7 (truncated to 96909);
c3 = c2 + c2*0.01 = 2060.4 (with inflation of previous year, truncated to 2060)
```

and so on...

John wants to know if the banker's plan is right or wrong. Given parameters `f0, p, c0, n, i` build a function `fortune` which returns `true` if John can make a living until the `nth` year and `false` if it is not possible.

# Some cases:

```
fortune(100000, 1, 2000, 15, 1) -> True
fortune(100000, 1, 10000, 10, 1) -> True
fortune(100000, 1, 9185, 12, 1) -> False

For the last case you can find below the amounts of his account at the beginning of each year:
100000, 91815, 83457, 74923, 66211, 57318, 48241, 38977, 29523, 19877, 10035, -5
f11 = -5 so he has no way to withdraw something for his living in year 12.
```

> **Note:** Don't forget to convert the percent parameters as percentages in the body of your function: if a parameter percent is 2 you have to convert it to 0.02.

## Mini Challenge 3

Given a string and an array of integers representing indices, capitalize all letters at the given indices.

For example:

- `capitalize("abcdef",[1,2,5]) = "aBCdeF"`
- `capitalize("abcdef",[1,2,5,100]) = "aBCdeF"`. There is no index 100.

The input will be a lowercase string with no spaces and an array of digits.

Good luck!
