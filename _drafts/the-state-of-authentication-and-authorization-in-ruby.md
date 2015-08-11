---
layout: posts
category:
  - development
summary: Authentication, Authorization and management of users in the
  database is not something you should develop yourself. After a lot of
  activity in authorization/authentication a few years ago, this is the
  state of the world today.
---

## Authentication, Authorization and User Management

Creating users and managing authentication & authorization is pretty
much a solved problem for rubyists. It wasn't always this way and it's
unclear if the solutions we have today will be sufficient for the
future.

For the purposes of this post, I'll preempt [David Brady's](https://twitter.com/dbrady)
 call for definitions with the following list:

User management means registering a new user for your web application
and persisting & updating the registration details in the database.

Authentication is the process of asserting the validity of the
credentials supplied by the user to the application.

Authorization is the process of asserting the validity of the user to be
accessing specific areas of the code or specific details of data.

As a community, we rubyists have made grand strides in our tooling for
each of the above concerns. It's now trivial to create a rails app with
user management, authentication and authorization. How did we get there?

## Brief Roadmap

* Restful-authentication August 1st, 2006
* Authlogic November 3rd, 2008
* Warden May 26th, 2009
* Clearance September 1st, 2009
* Devise October 21st, 2009
* Bluelightspecial started March 4th, 2010
* OmniAuth April 29th, 2010
* Sorcery January 31st, 2011
* doorkeeper November 27th, 2011
* rack-cas October 10th, 2012

## 

conclusion? - as SOA has grown, authentication/authorization as an API
has not grown with it. We maintain and use solutions built for
monolithic apps
