---
layout: default
category: development
summary:
  Offerpop does not automatically screen for duplicate entries.
  This script normalizes entries and then shows you the duplicates
---

I wound up having to do some anomaly detection for a giveaway campaign that recently completed.
By all accounts it was really successful! Sadly, some people didn't play
by the rules and entered many more times than once. One person entered
more than 2000 times!

Below is a simple bash script to detect a fairly high percentage of fraudulent
entries in just under a second:

<script
src="https://gist.github.com/brycemcd/de6ef86346d035858164.js"></script>
