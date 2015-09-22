---
layout: posts
category:
  - data-science
summary:
  Hadley Wickham spoke about Pure, predictable and pipeable interfaces
  in R code. As a community, we can learn a lot from the nuance from his
  talk
og_image_url: https://upload.wikimedia.org/wikipedia/commons/9/9b/Social_Network_Analysis_Visualization.png
---

The infamous [Hadley Wickham](https://en.wikipedia.org/wiki/Hadley_Wickham)
[gave a talk](http://www.meetup.com/nyhackr/events/224749681/) last Friday
entitled "Pure, predictable, pipeable: creating fluent interfaces."
There's some debate about the role of pipes in writing R code and I'm
not interested in joining the holy war. Instead, I think there are two
rather nuanced points in his talk that are of high urgency for those
who use R as a critical piece of their statistical workflow.

## Data Scientists can learn a lot from general programmers

What struck me the most about Hadley's talk was his emphasis on what I
consider to be core programming principles. It's understandable given
that a large number of data scientists (and I'm assuming that data
scientists are the principle users of R/R-studio) don't have a lot of,
if any, formal training in programming. His canonical example was that
composing a workflow in R like this:

```R
data_frame <- foo %>% bar() %>% baz()
```

is more readable and easier to read (and thus reason about) than:

```R
data_frame <- foo( bar(baz))
# the same as
data_frame <- foo(
  bar(
    baz()
  )
)
```

a real life example:

```R
taxi %>%
  filter(tolls_amount>0) %>%
  group_by(pickup_borough, dropoff_borough) %>%
  summarize(num_rides_w_tolls = n(), average_toll = mean(tolls_amount)) %>%
  ungroup() %>%
  ungroup() %>%
  arrange(desc(average_toll))
```

compared to:

```R
# I'm only kind of sure this works
arrange(
  summarize(
    group_by(
      filter(taxi, tolls_amount>0), pickup_borough, dropoff_borough
    ),
    num_rides_w_tolls = n(), average_toll = mean(tolls_amount)
  )
  desc(average_toll)
)
```

I have a strong opinion that the former is much easier to read and
reason about than the latter code block. One test that I've used (and
Hadley alluded to) is the "future self" test in which you read the code
with a perspective of "if I had no idea what problem I was working on,
is this code descriptive enough to tell me?" In other words: "Can I
guess what the result of this function is?" Sometimes, having a
colleague read through it and tell you what it's doing  (without any
background) is a helpful litmus test. Either way, experience has shown
that, after 6 months, I can start working on code with the %>% faster
than with the nested functions.

### Why is this useful?

It may seem like overkill to go to the trouble of good composition. It's
not and we can rely on history as a guide.

My background (obviously) is in programming and I've had the opportunity
to lead engineering teams. Growing junior developers into mid and senior
level programmers has been part of the job description. New developers
generally start with trying to "just make it work." The tools are new
and the lack of experience makes it hard to appreciate the effort
involved to change the code later.

>> Code is malleable. It evolves quickly. Your processes should reflect
>> those traits

Data science is a mix of math and code. Developing a deeper
understanding of the code part enables the scientist to allocate more of
her brain to the math parts of data science. When the programming effort
is minimal, the focus on math and discovery can be maximized. Spending
the time to make coding second nature is an investment in future
concentration on the models.

I wonder if much of the syntax and public examples of R code is in this junior
developer state. We're doing amazing things, but we spend a lot of time
reasoning about the code.

Senior developers, on the other hand, spend a lot of time reasoning
about the correctness of the code rather than if it will work. For most
projects, we make sure that the code runs efficiently and can be read &
supported easily.

### How do you make coding second nature?

Writing code is a craft and many professionals spend their entire
careers trying to get it "right." It's hard, but can be learned. One of
my favorite resources for learning object oriented programming
principles is [Practical Object Oriented Design in
Ruby](http://amzn.to/1OLDjcZ). It's grounded in the Ruby programming
language, but its principles extend well beyond Ruby.

There are tons of online resources to make you a better coder. Check
Udacity, Coursera, Code School and a number of others.

Learn another programming language (python makes sense for data
scientists) other than R. Once you get a good feel for it, apply those principles
you've learned to writing R code.


## R needs a few changes to compete with emerging technologies

R itself is a functional programming language and R-Studio is a great
IDE. R has evolved considerably in the last several years including the
use cases for which the language is being applied.

Python, Scala, Ruby and a myriad of other languages are also evolving
rapidly to meet the changing needs of what I'll call "data programmers."
These are people moving data around to create new insights.

Hadley touched on the concern that changing the programming interface of
R necessarily breaks legacy code. He sited this as a reason development of R packages
doesn't move faster. That may be true, but the field is
moving aggressively and the language will need to do the same in order
to remain relevant as data programmers become more commonplace.

>> Breaking legacy code is a satisfactory side effect of creating a
>> better future. IMHO of course

Moving fast and breaking legacy code can be painful but there are
alternatives.  Preventing catastrophic pain while the language advances would
require a community wide adherence to [semantic versioning](http://semver.org/).
Our tools should appreciate version numbers and timelines can be built
to advance the capabilities of the tools without leaving our legacy code
completely broken. Many package developers currently practice this
behavior, but a shift should occur to make it required.

## Why Pipes are correct

I can't leave this post without some inflammatory remark about pipes. As
mentioned earlier in this post, the pipes interface is much more
readable than its purely functional counterpart.

As data programmers become more prominent and as our R code is written
with the same discipline as python or java, I imagine we'll emulate
the habits of great programmers. Pipes have been around forever and a
natural tool to anyone familiar with the command line. Small utility
scripts have been baked into the \*nix operating systems and work really
well together because we always just pass plaintext around. In the same
way, data programmers should just be passing data frames around. This is
not an area where we have to be clever; let's borrow some of the
greatest concepts of our computing history.


## In the end

1. learn to be good programmers so we can focus on the math
2. use semantic versioning to clearly communicate the state of our tools
   and any breaking changes
3. move data frames around in pipes to emulate how text is translated by
   different \*nix utilities

Thanks to [Elliot Noma](http://newyorktechjournal.com/about/) for taking
[better
notes](http://newyorktechjournal.com/2015/09/pure-predictable-pipeable-creating-fluent-interfaces-with-r/) than I did.
