---
title:  "Security & Privacy Checklist"
date:   2017-04-19 09:00:00 +0100
time_to_read: 4
redirect_from: 2017/04/19/security-privacy-checklist.html
---

Here's a list of 9 steps that everyone can take to ensure a basic level of security and privacy online. Following these suggestions will reduce the risk of online accounts and data being compromised.

<div class="quiz">
  <h3 class="quiz__question" id="question-1">
    1. Do you use a password manager to store your passwords?
    <a class="no-underline" href="#question-1">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="correct">YES</a>
    <a class="quiz__answer" data-answer="incorrect">NO</a>
  </div>
  <p class="quiz__explanation">
    Password reuse is a serious problem, but it's not your fault. It's difficult to remember distinct passwords for every site you sign up to. Humans also have a hard time creating passwords that machines will struggle to crack. Password managers like <a href="https://1password.com">1Password</a> or <a href="https://www.lastpass.com/">LastPass</a> solve these problems.
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-2">
    2. Do you use two-factor authentication (2FA) for all important accounts?
    <a class="no-underline" href="#question-2">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="correct">YES</a>
    <a class="quiz__answer" data-answer="incorrect">NO</a>
  </div>
  <p class="quiz__explanation">
    Without 2FA, your password is your single form of authentication. If stolen or cracked, attackers have access to your account and can impersonate you. All important (i.e. email, banking and social media) accounts should be protected with a second form of authentication, like a physical <a href="https://en.wikipedia.org/wiki/YubiKey">Yubikey</a> or <a href="https://en.wikipedia.org/wiki/Google_Authenticator">authenticator app</a>. If possible, <a href="http://fortune.com/2016/07/26/nist-sms-two-factor/">avoid using SMS</a>. Don't forget to store backup codes though!
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-3">
    3. Do you keep your software updated?
    <a class="no-underline" href="#question-3">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="correct">YES</a>
    <a class="quiz__answer" data-answer="incorrect">NO</a>
  </div>
  <p class="quiz__explanation">
    Apple, Microsoft, Google, Facebook and other software makers all periodically release bug fixes and security updates. If updates fix security vulnerabilities, it is incredibly important to update your devices immediately as the update change logs often mention which <a href="http://cloudsitesblog.liquidweb.com/importance-updating-software-2/">publically known vulnerabilites where patched</a>. Public knowledge of these vulnerabilties give attackers an advantage when targetting users with outdated software.
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-4">
    4. Do you use the HTTPS Everywhere browser extension (or similar) to ensure all traffic is HTTPS-only?
    <a class="no-underline" href="#question-4">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="correct">YES</a>
    <a class="quiz__answer" data-answer="incorrect">NO</a>
  </div>
  <p class="quiz__explanation">
    Websites served over the internet use either HTTP or HTTPS protocols. The latter ensures all web requests sent and received are encrypted. This prevents attackers from viewing or changing the contents of your page. Unfortuantely, many websites that offer HTTPS make it difficult to use (e.g. making the default HTTP). Extensions like <a href="https://www.eff.org/https-everywhere">HTTPS Everywhere</a> ensure HTTPS is used where possible and also have a feature to prevent all HTTP requests (though this may prevent access to some websites).
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-5">
    5. Do you only use chat apps that have end-to-end encryption (E2EE)?
    <a class="no-underline" href="#question-5">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="correct">YES</a>
    <a class="quiz__answer" data-answer="incorrect">NO</a>
  </div>
  <p class="quiz__explanation">
    Most online chat apps (e.g. <a href="https://www.messenger.com/">Facebook Messenger</a>) do not use E2EE by default. Message sent are stored with your service provider and even if they are encrypted, they have the key. Your service provider can read and edit your messages, and if they suffer a particularly nasty attack or receive a warrant, your messages could be leaked. Use <a href="https://en.wikipedia.org/wiki/Signal_%28software%29">Signal</a> or <a href="https://www.whatsapp.com/">WhatsApp</a> to protect yourself against this.
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-6">
    6. Do you use a secure VPN?
    <a class="no-underline" href="#question-6">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="correct">YES</a>
    <a class="quiz__answer" data-answer="incorrect">NO</a>
  </div>
  <p class="quiz__explanation">
    If it's <a href="https://www.theregister.co.uk/2016/07/28/vpn_users_in_uae_face_544k_fine/">legal</a> to do so, you should be using a secure VPN. Without one, your ISP (e.g. Comcast or BT) knows what websites you visit and if the websites are not served over HTTPS, they know of what you do on those websites. In the U.S., lawmakers have recently relaxed rules, allowing ISPs to <a href="http://www.pcworld.com/article/3184410/security/senate-votes-to-kill-fccs-broadband-privacy-rules.html">sell your browsing history</a>. Imagine your health insurer getting hold of your medical search history!
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-7">
    7. Do you use a browser extension to block ads or user tracking scripts?
    <a class="no-underline" href="#question-7">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="correct">YES</a>
    <a class="quiz__answer" data-answer="incorrect">NO</a>
  </div>
  <p class="quiz__explanation">
    Advertisers and other third-party trackers are secretly tracking where you go and what pages you look at on the web. This helps them better sell products but could result in you <a href="https://www.theguardian.com/commentisfree/2016/dec/06/cookie-monsters-why-your-browsing-history-could-mean-rip-off-prices">paying more</a> for a product than others. You can stop this by using a browser extension like <a href="https://www.eff.org/privacybadger">Privacy Badger</a>.
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-8">
    8. What search engine do you use?
    <a class="no-underline" href="#question-8">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="incorrect">GOOGLE</a>
    <a class="quiz__answer" data-answer="correct">DUCKDUCKGO</a>
    <a class="quiz__answer" data-answer="incorrect">BING</a>
    <a class="quiz__answer" data-answer="correct">STARTPAGE</a>
  </div>
  <p class="quiz__explanation">
    Search engines like Google or Bing store tons of personal information and search requests (by default). Search engines use this information to (very accurately) determine your interests and show ads that you are likely to click on. They also might be required to <a href="http://www.zdnet.com/article/what-google-does-when-a-government-requests-your-data/">hand this information over to authorities</a>. If you're not comfortable with this, consider changing your default search engine to one that doesn't track you - like <a href="https://duckduckgo.com/">DuckDuckGo</a> or <a href="https://www.startpage.com/">startpage</a>!
  </p>
</div>

<div class="quiz">
  <h3 class="quiz__question" id="question-9">
    9. Can you unlock your devices using your fingerprint?
    <a class="no-underline" href="#question-9">
        {% include svg/link_icon.svg %}
    </a>
  </h3>
  <div class="quiz__answers">
    <a class="quiz__answer" data-answer="incorrect">YES</a>
    <a class="quiz__answer" data-answer="correct">NO</a>
  </div>
  <p class="quiz__explanation">
    The U.S. (and <a href="https://www.cnet.com/news/man-charged-for-refusing-to-give-up-phone-passcode-to-canadian-border-agents/">other countries</a>) are <a href="https://www.theatlantic.com/technology/archive/2017/02/a-nasa-engineer-is-required-to-unlock-his-phone-at-the-border/516489/">forcing people to unlock their devices</a> more frequently (and typically at the border where they <a href="https://www.eff.org/issues/know-your-rights#5">do not need a warrant</a>). Although, I suggest not crossing the border with devices containing sensitive information, this might not always be possible. Locking your device with a passcode instead of your fingerprint increases it's security, as you <a href="https://www.theguardian.com/commentisfree/2016/feb/26/can-government-force-you-to-unlock-your-phone-fifth-amendment">cannot be made</a> to <a href="https://www.eff.org/issues/know-your-rights#17">unlock it</a>. Additionally, if your fingerprint is ever compromised (e.g. in a hack), you cannot change it like you can change your password.
  </p>
</div>

<b>Disclaimer:</b> I do not guarantee these steps will protect you from attackers, especially sophisticated or determined ones.
