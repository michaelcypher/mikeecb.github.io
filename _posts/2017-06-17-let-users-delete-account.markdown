---
title:  "Let Users Delete Their Accounts"
date:   2017-06-17 16:00:00 +0100
time_to_read: 4
redirect_from: 2017/06/17/let-users-delete-account.html
---

Yesterday, I installed the [Signal](https://itunes.apple.com/app/id874139669) app by [Open Whisper Systems](https://whispersystems.org/). I was pleasantly surprised by a bright red "Delete Account" button clearly visible at the bottom of the settings view. If I wanted to, I could have deleted my Signal account with just 2 taps from the conversations view.

<div class="small-image-container">
    <div class="small-image img-container">
        {% include svg/signal_1.jpg.svg %}
        <img src="/assets/imgs/signal_1.jpg" class="overlay-img">
    </div>
    <div class="small-image img-container">
        {% include svg/signal_2.jpg.svg %}
        <img src="/assets/imgs/signal_2.jpg" class="overlay-img">
    </div>
  <div style="clear:both;"></div>
</div>

<p class="image-label">Delete your Signal account in just 2 taps!</p>

I really, really appreciate this. I personally like knowing I can deactivate my account whenever I want and I'm ultimately more likely to sign up. If circumstances change, I want to be able to re-evaluate my decision of having an account with you. I don't want to feel like I'm eternally bound to a business.

Unfortunately, most organizations care about user retention so much that they make it incredibly hard (and sometimes impossible) to delete your account. Signal is different. Probably because they explicitly cater to users who value their security and privacy, so it makes sense for them to make it easy for users to delete their accounts.  

This got me thinking, how many taps does it take to delete accounts from other popular orgs? Being the narcissist that I am, I invented a new metric: **Taps to Delete Account** (TDA).

Signal has a TDA value of 2 because it took exactly 2 taps to delete my account after opening the app. Let's test some other popular apps.

### Instagram ###

The first app I tested was the Instagram app. As far as I know, the vast majority of its users use the mobile app instead of the web version. Furthermore, its web version is barely on par with the app with regards to features. You would expect to be able to delete their account from within the app, right? Nope!

<div class="small-image-container">
    <div class="small-image img-container">
        {% include svg/instagram_1.jpg.svg %}
        <img src="/assets/imgs/instagram_1.jpg" class="overlay-img">
    </div>
    <div class="small-image img-container">
        {% include svg/instagram_2.jpg.svg %}
        <img src="/assets/imgs/instagram_2.jpg" class="overlay-img">
    </div>
    <div class="small-image img-container">
        {% include svg/instagram_3.jpg.svg %}
        <img src="/assets/imgs/instagram_3.jpg" class="overlay-img">
    </div>
  <div style="clear:both;"></div>
</div>

<p class="image-label">Searching the Instagram settings page for a "Delete Account" button proves difficult. 3 taps minimum.</p>

<div class="small-image-container">
    <div class="small-image img-container">
        {% include svg/instagram_4.jpg.svg %}
        <img src="/assets/imgs/instagram_4.jpg" class="overlay-img">
    </div>
    <div class="small-image img-container">
        {% include svg/instagram_5.jpg.svg %}
        <img src="/assets/imgs/instagram_5.jpg" class="overlay-img">
    </div>
  <div style="clear:both;"></div>
</div>

<p class="image-label">Give up, DuckDuckGo it and find out it's not possible to delete your Instagram in the app. Sigh, 24 taps.</p>

<div class="small-image-container">
    <div class="small-image img-container">
        {% include svg/instagram_6.jpg.svg %}
        <img src="/assets/imgs/instagram_6.jpg" class="overlay-img">
    </div>
    <div class="small-image img-container">
        {% include svg/instagram_7.jpg.svg %}
        <img src="/assets/imgs/instagram_7.jpg" class="overlay-img">
    </div>
    <div class="small-image img-container">
        {% include svg/instagram_8.jpg.svg %}
        <img src="/assets/imgs/instagram_8.jpg" class="overlay-img">
    </div>
  <div style="clear:both;"></div>
</div>

<p class="image-label">Yay, we found the page! Another 2 taps plus the length of my password.</p>

Since I believe businesses should provide this feature in-app, I give Instagram a TDA value of ∞. Not great.

However, if you allow non-app based account deletion, Instagram has a TDA value between 39. This doesn't include any additional steps required to log on to the mobile website. By the way, I'm not having a jab at Instagram in particular - they were just the first app I tested!

### Comparison ####

To save you from loading too many photos, I've compiled the TDA value for a bunch of different apps. Trust me, they're (probably) correct. But seriously, if you think I've made a mistake or if you'd like to contribute to this list, <a href="mailto:michael@cypher.codes">email me</a> or [submit a pull request](https://github.com/mikeecb/mikeecb.github.io).

<table>
  <thead>
    <tr><td>Application</td><td>Taps to Delete Account</td></tr>
  </thead>
  <tbody>
    <tr><td>Signal</td><td>2</td></tr>
    <tr><td>Uber</td><td>10</td></tr>
    <tr><td>WhatsApp</td><td>13</td></tr>
    <tr><td>Facebook</td><td>16</td></tr>
    <tr><td>Snapchat</td><td>20</td></tr>
    <tr><td>Reddit</td><td>∞</td></tr>
    <tr><td>Spotify</td><td>∞</td></tr>
    <tr><td>Messenger</td><td>∞</td></tr>
    <tr><td>Instagram</td><td>∞</td></tr>
  </tbody>
</table>


**Note:** For all tests, I've assumed users have a 10 digit or character long phone number or password respectively.
