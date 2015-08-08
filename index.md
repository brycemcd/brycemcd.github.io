---
layout: default
---
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Person",
  "address": {
    "@type": "PostalAddress",
      "addressLocality": "New York City",
      "addressRegion": "NY",
      "postalCode": "10009",
},
"jobTitle": "VP Technology / Chief Technology Officer",
"name": "Bryce McDonnell",
"url":
"http://www.brycemcdonnell.com"
}
</script>
<div id="header" itemscope itemtype="http://schema.org/Person">
  <h1> <span itemprop="name">Bryce McDonnell</span> </h1>
  <h2> <span itemprop="jobTitle"> Entrepreneur, Technology Leader, <3 Data </span></h2>
</div>

<div id="intro">
    I'm currently a technology leader at a fast growing start up in New York City.
    My background is fairly diverse but, in general,
    I work well at smaller companies who wish to grow quickly.
</div>

<div id="post-intro">
  I'll post articles about entrepreneurship, software engineering and
  playing around with data.
</div>

<div id="ego">
  <p> My professional work can be found at: </p>
  <ul>
  <li>
    <a href="https://www.github.com/brycemcd" target="_blank">Github</a>
  </li>
  <li>
    <a href="http://stackoverflow.com/users/366464/bryce" target="_blank">Stackoverflow</a>
  </li>
    <li>
      <a href="https://www.linkedin.com/in/brycemcd"
target="_blank">LinkedIn</a>
    </li>
  </ul>
</div>

## Recent Blog Posts:

<ul>
{% for post in site.posts %}
  <li> <a href="{{ post.url }}">{{ post.title }}</a> </li>
{% endfor %}
</ul>

## Internet I've Been Reading
<ul id="reading-list">
</ul>

<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="https://api.trello.com/1/client.js?key=f3b1593d9870a335c7acdc2844a866ea"></script>
<script>
  Trello.get("lists/5516b2060968d9feeeb00b8c/cards?limit=15&attachments=true", function(cards) {
    $.each(cards, function(ix, card) {
      var link = $("<a>")
        .attr({href: card.attachments[0].url, target: "_blank"})
        .addClass("card")
        .text(card.name);
      var dateRead = new Date(card.dateLastActivity);
      //link.appendTo($cards);
      $('#reading-list').append($("<li>").append(link).append(" read: " + dateRead.toLocaleString()) );
    });
  });
</script>
