<h1 style='text-align:center;'>In#Tune Social Newtwork</h1>

In#Tune Social network is a Capstone project that counts towards [Microverse](https://www.microverse.org/) graduation.

## Introduction

At first it will be developed as a twitter re-design, but later it will be worked to have
extra features focused in matching people with commom interests, that's why it's called 'In#Tune'.

It mainly aims to have several functions listed below in order to practice with the Ruby on Rails framework. The features mentioned are:

  - User Score (Score relative to another user, that'll be called relationship score)
  - User Interests (User interests will add score in the relationship)
  - User Dislikes (Will decrease score in the relationship)
  - Tagging System
  - Chat & Private Messaging

## Specifications

The Project Requirements are Listed Below (The completed ones are marked with a V)

V. The user logs in to the app, only by typing the username (a proper authenticated login is **not** a requirement).

V. The user is presented with the homepage (see the *Homepage* screenshot above) that includes:
    V. Left-side menu (includes only links to pages that are implemented).
    V. *Tweets* tab in the centre (skip *Photos* and *Videos* for this MVP).
    V. Right-side section with *Who to follow (*skip *Trending for* this MVP).

V. The *Tweets* section includes:
    V. Simple form for creating a tweet.
    V. List of all tweets (sorted by most recent) that display tweet text and author details.

V. The *Who to follow* section includes:
    V. List of profiles that are not followed by the logged-in user (ordered by most recently added).

5. When the user opens the profile page (see the *Userpage* screenshot above), they can see:
    V. Left-side menu (includes only links to pages that are implemented).
    2. Cover picture and *Tweets* tab in the centre (skip other tabs and *Tweet to user* form).
    3. Right-side section with *Profile detailed info.*

6. The *Profile detailed info* section includes:
    1. User photo.
    2. Button to follow a user.
    3. Stats: total number of tweets, number of followers and number of following users.
    4. List of people who follow this user.

7. At the end extend your MVP app with one simple feature of your choice.

## Used Tools

* Ruby 2.6.5
* Rails 6.0.3
* Postgre SQL
* Puma as the app server
* SCSS for stylesheets
* [Transpile](https://github.com/rails/webpacker)
* webpacker 4.0
* [Turbolinks](https://github.com/turbolinks/turbolinks)
* [Jbuilder](https://github.com/rails/jbuilder)
* [Bootstrap](https://getbootstrap.com/)
* [Faker](https://github.com/faker-ruby)
* Image Processing 1.2
* Bootsnap 1.4.2
* Byebug
* Shoulda-matchers
* Listen 3.0.5
* web-console 3.3.0
* [Spring](https://github.com/rails/spring)
* Rubocop
* RSpec-rails
* Capybara
* Launchy
* Selenium-webdriver
* Webdrivers

## Todo

<h3>General Requirements</h3>

 1. The homepage should include the Right-side section with who to follow (skip Trending for this MVP) -- You have already done the requirements related to this on a separate page (explore page), but it needs to be in a right-side section of the homepage.

 2. The feed page should be the root after the user signs in.

 3. In the user profile page, profile detailed info which is : - User photo. - Button to follow a user. - Stats: total number of tweets, number of followers, and number of following users. - List of people who follow this user. should be in the Right side section.

 <h3>UI Design Requirements</h3>

 You have done a wonderful job with the styling of the application, yet the given design should be followed:

 - The colors used are different from the given design, you should pick them from the design.

 - Typography: font face, size, and weight should be similar to the given design.
 - If you have can't find the used font try using a similar one.

 <h3>MVC pattern</h3>

 - There is some logic used in the views, please make sure that View related logic is encapsulated in their corresponding helper modules.
 - Controllers are responsible for gathering organizing and filtering data. For example: in users_controller instead of passing all users, and looping through the users in "_friends.html.erb" partial to check if the current_user follows them, we send only current_user friends or followers from users_controller. This also will remove the need to check if the current user is a friend or not with each one on the friends list.

 <h3>N+1 problem</h3> There are some offenses related to the N+1 problem and has not been addressed properly. I suggest reading more about the N+1 problem and how to fix it. Suggested approach: there is a gem called bullet (https://github.com/flyerhzm/bullet) that enables you to surf through your application and alert you with N+1 offenses and how to fix them, but I highly encourage you to understand the problem first before using the Bullet gem. Installing the Gem is pretty straightforward, just install the gem and add the configuration from the readme.

  <h3>Testing with RSpec</h3>
   There are no RSpec tests found in your project. Please make sure to add RSpec model tests that check against positive and negative scenarios.
   <h3>Deployment</h3>
   I couldn't find a link for a demo application neither in readme file nor in the pull request description, Please make sure to include the link in your readme file and the PR description. Please contact me on slack "Muhammad Ebeid" if there is anything unclear about the review.
