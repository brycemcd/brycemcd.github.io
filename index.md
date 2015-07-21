---
layout: default
---
<div id="header">
  <h1> Bryce McDonnell </h1>
  <h2> Entrepreneur, Tech Leader, <3 Data </h2>
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

<ul>
{% for post in site.posts %}
  <li>
  <a href="{{ post.url }}">{{ post.title }}</a>
  </li>
{% endfor %}
</ul>
