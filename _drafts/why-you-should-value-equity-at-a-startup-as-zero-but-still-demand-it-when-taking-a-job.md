---
layout: posts
category:
  - business
summary:
  Valuing equity at a startup is difficult but an important part of a
  compensation package. This article guides you through valuing the
  equity portion of a compensation package

---

Negotiating a pay package at a startup company can be harrowing. Beyond
cash compensation, employees are often offered equity. This equity is
difficult to value and the accompanying sales pitch that often comes
with the equity offer creates enthusiasm that may over value the equity.

At an early stage startup, I think it's important to value to the equity
piece of the total compensation package very close to zero. Even so, it
it's still important to include an equity grant in your compensation package.
I hope this post can serve as a guide to correctly valuing and negotiating
an equity grant.

## Initial Company Setup

As a new company is looking to hire their first technical person (I've
been called a "hand's on CTO before), the company has probably closed
their seed round and are a few months away from raising their A round.

### Some Hypotheticals

For round numbers, assume that 120,000 shares of the company currently
exist. The founder owns all 100,000 shares and seed round investors
split 20,000 shares. The founder's percentage ownership went from 100%
to 83% and an option pool has been established that new employee equity
will draw from and that pool is drawn directly from the founder's
shares.

## Liquidity Event

Equity is fairly worthless in a private company simply because it's very
difficult to convert shares of a private company to cash. For a public company,
there are stock exchanges that value the stock each sub-second and there
are people willing to buy and sell the stock. For a private company
there are a limited number of secondary markets. These markets are not
reliable.

A liquidity event happens when you are able to sell your stock for cash.
Often, it means the company is acquired or goes through
an initial public offering (IPO) of their stock (goes public). It simply
means that there is a real opportunity to turn your stock into cash and
realize its value.


## Probability

The math here is far from precise but it is based on the most accurate
data I could find. Again assuming you are being hired at the seed stage
of the company, you need to assess the risk that your shares will mature
to the point where they can be liquidated. This often means a few rounds
of funding and then a liquidity event.

The best data I could find on this was from a post by [Tom Tunguz](http://tomtunguz.com/followon-patterns/)
describing data from crunchbase:

>> ... the mean success rate to raise an A after a Seed is 27%, to raise a B
>> after an A is 35%, and the whole way through the funnel, Seed to B, is
>> 11.5%. Said another way, only 12% of companies who raise a Seed will
>> raise a B.

The data are noisy but serve to show that even making it to a B round
has a low probability. Many companies need to go on to raise a C and D
round prior to having a liquidity event.

I don't have good data on extending Tom's analysis to the C and D
rounds. I think that it's reasonable that the
odds go up as the company moves into the later stages. For sake of
argument and to have a good conservative guess, I'll assume that a
company that makes it to the B round has a 70% chance of raising a C and
a 70% chance of raising a D before their liquidity event. If they've
raised a D, I'm assuming a 100% chance of having a liquidity event.
This is bullish.

In order to correctly value your equity compensation, you need to build
in the risk of the company making it all the way to a liquidity event.
Most companies do not make it that far.

One equation you can use to build in the risk is simple probability. The
probability that a company at the seed stage will have a liquidity
event. This is calculated by multiplying the probabilities at each
round:

P(liquidity | seed) = P(A) * P(B) * P(C) * P(D)

P(liquidity | seed) = 0.27 * 0.35 * 0.7 * 0.7

P(liquidity | seed) = 0.04 = 4%

This suggests that there is a 4% chance that your equity will be worth
more than zero in the future. My gut says that reality is probably a
little more pessimistic than that, but changing the assumptions above
will result in higher or lower probabilities.

If a company has offered you equity with a current value of $10,000 it
would be prudent to multiply that amount by the probability of a
liquidity event. Personally, I would value that $10,000 at $400.

## Dilution

Startups tend to dilute their value as they reach increasing success.
Generally, this is a good thing. A founder that owns 100% of the company
at the beginning owns 100% of a $0 valued company. As the company grows,
it's possible that the founder will own ~35% of a $300MM or more company.

At each round of fundraising, the founders issue more shares of the
company and those shares go to the investors. Usually, this is in the
form of preferred shares. In order to keep this simple, I'll assume that
preferred shares are equal with common stock. While this will create
inexact precision, it will be easier to understand and be directionally
correct.

For round numbers, assume you're offered 1% of the company's current equity at
the seed stage. You'll most likely be offered options in the employee
stock option pool which can be converted to shares later. This is a
whole other topic, but one option sort of equals one share of stock. 1%
of the company's equity at the seed stage can equate to 0.48%
after three more rounds of funding [1]. Even after those rounds, there is still
no guarantee of liquidity.

More rounds of funding is significant as it contributes to dilution.
My last employer gave me a fairly
standard "four year vest, one year cliff" clause in my employment
contract. This means that I had 0 options for one year and earned 1/36th
of the options I negotiated each month after I had worked there 12
months. At the end of four years I would have have all the options I was
negotiated. According to [this source](http://correlatedcausation.com/when-to-raise-using-crunchbase-data-part-2/)
the average time between funding rounds is nine months.
In my experience it's closer to 12 months, but
assuming the afore mentioned four year total vesting period and 12
months between funding rounds, you're initial 1% of the company is
diluted to around 0.5% by the time it's fully realized. The stock should be
worth a lot more but that's not always the case.

A fallacy in assessing the value of the equity grant is to not
appropriately account for dilution. Take an example when the value of the company is $100MM.
If you assume you still own 1%, then you'd calculate that equity to be worth $1MM.
Borrowing from the hypothetical example above, the equity is actually worth closer to $480,000.

Assuming it takes 4 years to completely vest your equity, the grant
works out to be worth about $120,000 per year.

## Dilution * Risk

Combining dilution and risk results in valuing the equity grant close to
$0.

With the assumption that you are being offered 1% of a company with a
future value of $100MM and four years to get there, apply four years
worth of dilution to reduce the grant to about 0.48% and the risk of
liquidity to 4% and it results in a very small number:

$100MM * 0.0048 * 0.04 = $19,200 = $4800 per year until fully vested.

## Why You Still Want It

I've been pessimistic in valuing equity in an early stage company but I
still believe that you, the employee, are better off if you have a good
chunk of equity as you join the company. This is for a couple of
reasons:

Working at an early stage company is a ton of work. Long hours is just
the beginning. There is a significant amount of emotional effort in
working with other passionate people and facing an uncertain future. You
need to have skin in the game and the reassurance that your
contributions to the company are driving the value of the stock higher.

You also want the reward that comes with the unlikely liquidity event.
The odds are vanishingly small that an event will occur that will change
your lifestyle; something along the lines of Facebook or Google. The
odds get a little better that the equity will be worth more than zero
and, personally, I'd advocate making sure you are positioned to
experience some of that upside.

## Conclusion

Valuing equity is not simple. In an early stage company there is a lot
of future opportunity that is built in to the value of the company's
equity. There is no "right answer" when negotiating your stake in the
company but you should find a balance between cash and equity where
you're comfortable. This article should help guide your mindset for a fair value
of the equity you are offered. As always, ping me on
[twitter](https://twitter.com/brycemcd) if I can help you.


[1] I assume that the company gives up around 20% of the company at each
round

#### Notable Sources Used For This Article:
Time between rounds
http://correlatedcausation.com/when-to-raise-using-crunchbase-data-part-2/

Likelihood of making the next round
http://tomtunguz.com/followon-patterns/

Dilution scenarios
http://davidcummings.org/2015/11/15/high-and-low-equity-dilution-scenarios/

Dilution vs. Death
http://www.joshhannah.com/2015/07/dilution-vs-death/?utm_source=rss&utm_medium=rss&utm_campaign=dilution-vs-death

https://docs.google.com/spreadsheets/d/1gtRzpbn0lhm_agLhustggIHlEsMbO7FkqNBcERTvsWQ/edit#gid=0
