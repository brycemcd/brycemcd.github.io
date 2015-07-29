---
layout: posts
category:
  - data-science
  - business
permalink: plotting-user-retention-curves-in-R
summary:
  Quickly and easily build a user retention graph using R and an
  export from Mixpanel
og_image_url: https://s3-us-west-2.amazonaws.com/bme-blog/retention-filtered.png
---

This post was inspired by Dan Croak ([@croaky](https://twitter.com/Croaky))
 over at [The Giant Robots Blog](https://robots.thoughtbot.com/create-a-retention-curve-with-mixpanel-and-google-sheets).
His approach to user retention is spot-on and his walk through for user
retention graphs are very useful for building a consumer facing product.

[I tweeted](https://twitter.com/brycemcd/status/617433218627858432) that
a user retention curve is easier to explain to other people in the
business in a way that is actionable.

<blockquote class="twitter-tweet" lang="en"><p lang="en"
dir="ltr">Create a Retention Curve with Mixpanel and Google Sheets -
much easier to grok than the waterfall charts imho <a
href="https://t.co/NvWfUFfHSV">https://t.co/NvWfUFfHSV</a></p>&mdash;
Bryce (@brycemcd) <a
href="https://twitter.com/brycemcd/status/617433218627858432">July 4,
2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js"
charset="utf-8"></script>

Taking this one step further, I think that building such a curve should
be mindless to generate. Dan's tutorial was straightforward but making
it automatic will decrease the time to generate the graph. Making a user
retention graph a no-brainer will make it much more likely that it gets
generated at a regular interval and shared with other people in the
business. In particular, manually changing the colors and building a
graph in Google Sheets is fairly arduous.

## MOAR AUTOMATION

Dan's (and now my) goal of producing user retention curves can be better
automated. All it takes is R (or RStudio) and the downloaded csv from
Mixpanel (see Dan's post for the format of the csv).

After about an hour of playing (yes, it was super fun) in R, the process
can be better automated with [this
gist](https://gist.github.com/brycemcd/5d6c9e77cd8597ff7027).

<script
src="https://gist.github.com/brycemcd/5d6c9e77cd8597ff7027.js"></script>

The script produces the following graphs (click to zoom in):

### All Data

<a href='https://s3-us-west-2.amazonaws.com/bme-blog/retention-all.png' target='_blank'>
  <img src='https://s3-us-west-2.amazonaws.com/bme-blog/retention-all.png'
  width='100%' alt='User Retention - All'/>
</a>

### Filtered Data

<a href='https://s3-us-west-2.amazonaws.com/bme-blog/retention-filtered.png'
target='_blank'>
  <img src='https://s3-us-west-2.amazonaws.com/bme-blog/retention-filtered.png' width="100%" alt='User Retention - filtered'/>
</a>

Note that `X0.weeks.later` isn't that interesting for this product. So,
it can be cut out by simply subsetting the data:

`retention %>% filter(t != 'X0.weeks.later' & weeks_ago != 27)`

## The Future

The next step is to automatically pull the data into R from the Mixpanel
API. It should be relatively straightforward.

This script is certainly going to be useful to me as we continue to
build [Cricket's Circle](https://www.cricketscircle.com). I hope it's
useful for you as you're building whatever web or native product you're
building. Let me know what you're working on and, as always,
improvements are always welcome. Thanks Dan for the inspiration.
