---
uid: prostejov
cid: prostejov
name: Prostějov
fullname: Místní sdružení Prostějov
img: teams/prostejov.jpg
leader: petr.lysek
deputy:
- petr.kapounek
- milan.fladr
contact:
- milos.zmeskal
region: Prostějov
url: https://olomoucko.pirati.cz/mistni-sdruzeni/prostejov
categories:
- mistni-sdruzeni
tags:
- prostějov
facebook: https://www.facebook.com/PiratiProstejov
redmine:
forum: https://forum.pirati.cz/prostejov-f655/
web: https://olomoucko.pirati.cz/mistni-sdruzeni/prostejov
# do popisku akce níže vložte, kdy a kde se tým schází a jak se zapojit
---
Místní sdružení Prostějov sdružuje Piráty z okresu Prostějov.

<div class="o-section-header">
  <h2 class="o-section__heading o-section__heading--small">Články</h2>
</div>

{% assign counter = 0 %}
{% for article in site.posts %}
{% if article.tags contains "prostějov" and counter < 6 %}
{% assign counter = counter | plus: 1 %}
<article itemtype="http://schema.org/BlogPosting" class="c-BlogPosting-excerpt" itemscope="">
  <link itemprop="mainEntityOfPage" href="http://insertshownpagelinkhere.com">
  <div class="c-BlogPosting-excerpt-contentWrapper u-cf">
    <div class="c-BlogPosting-excerpt-photoBox">
      <!-- BlogPosting image -->
      <div itemprop="image" itemtype="http://schema.org/ImageObject" class="c-BlogPosting-excerpt__image" itemscope="">
        <a href="{{article.url | relative_url}}">
          <img src="{{ article.image | relative_url}}" alt="{{article.title}}">
        </a>
        <meta itemprop="url" content="{{ article.image | relative_url }}">
        <meta itemprop="width" content="">
        <meta itemprop="height" content="">
      </div>
    </div>
    <div class="c-BlogPosting-excerpt-contentBox">
      <!-- Headline -->
      <h2 itemprop="headline" class="c-BlogPosting-excerpt__title">
        <a style="color:#2785ce;" href="{{article.url | relative_url }}" itemprop="url">{{article.title}}</a>
      </h2>
      <!-- BlogPosting description-->
      <div itemprop="description" class="c-BlogPosting-excerpt-content">{{ article.excerpt | truncatewords: 33 | strip_html }}</div>
      <a href="{{article.url | relative_url }}" class="c-BlogPosting-excerpt-readMore">Přečíst celý článek &rsaquo;</a>      
    </div>
    <!-- Publisher -->
    <div itemprop="publisher" itemtype="http://schema.org/Organization" class="u-hidden" itemscope="">
      <div itemprop="logo" itemtype="http://schema.org/ImageObject" itemscope="">
        <meta itemprop="url" content="{{ 'assets/img/brand/logo.svg' | relative_url }}"> 
      </div>
      <meta itemprop="name" content="Česká pirátská strana">
    </div>
  </div>
  <div class="c-BlogPosting-excerpt-infoBox">
    <!-- Date published -->
    <span itemprop="description" class="c-BlogPosting-excerpt__datePublished">
      <i class="fa fa-calendar-o" aria-hidden="true"></i> {{article.date | date: "%d.%m.%Y"}}
      <meta itemprop="datePublished" content="{{article.date | date_to_xmlschema }}">
      <meta itemprop="dateModified" content="">
    </span>
    <br class="hide-for-medium">
    <!-- Authors -->
    <span itemprop="author" itemtype="http://schema.org/Person" class="c-BlogPosting-excerpt__authors" itemscope="">
      <i class="fa fa-user" aria-hidden="true"></i>
      <span itemprop="name" class="c-BlogPosting-excerpt__author">{{ article.author }}</span>
      <br class="hide-for-medium">
    </span>     
  </div>
</article>
{% endif %}
{% endfor %}