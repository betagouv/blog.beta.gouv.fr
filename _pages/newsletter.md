---
layout: page
permalink: /newsletter/
title: Newsletter
---

## Inscrivez-vous à la newsletter de beta.gouv.fr

<div class="container">
  <div class="form__container">
    <form method="post" action="https://app.mailjet.com/widget/iframe/1O2v/14x" id="newsletter">
      <div class="form__group">
        <label for="subscribe-email" class="title" aria-label="Renseignez votre adresse e-mail pour recevoir nos annonces">Abonnez-vous pour recevoir nos annonces</label>
        <input required type="email" autocomplete="on" id="subscribe-email" name="w-field-field-4125-18987-430683-email" placeholder="votre@email.fr">
        <button class="button large" type="submit" name="subscribe" id="form-submit" style="margin-top:1em; margin-left:25%;">Recevoir nos annonces</button>
        </div>
    </form>
  </div>
</div>

<hr />
<h3>Retrouvez les anciennes Newsletters</h3>
<ul>
{% assign sorted = site.newsletters | sort: 'date' | reverse %}
{% for item in sorted %}
  <li><a href="{{ item.target }}">Newsletter du {{ item.date | date_to_long_string }}</a>{% if item.focus %} avec un focus sur {{ item.focus }}{% endif %}</li>
{% endfor %}
</ul>
