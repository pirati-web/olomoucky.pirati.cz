---
uid: prerov
cid: prerov
name: Přerov
fullname: Místní sdružení Přerov
img: teams/prerov.jpg
leader: martin.svadlenka
deputy:
- jan.gebauer
- tomas.karlik
contact:
- milos.zmeskal
region: Přerov
url: https://olomoucko.pirati.cz/mistni-sdruzeni/prerov
categories:
- mistni-sdruzeni
tags:
- přerov
facebook: https://www.facebook.com/Prerovsko/
redmine:
forum: https://forum.pirati.cz/prerov-f664/
web: https://olomoucko.pirati.cz/mistni-sdruzeni/prostejov
# do popisku akce níže vložte, kdy a kde se tým schází a jak se zapojit
---
Přerov (německy Prerau) je okresní město v Olomouckém kraji, 21 km jihovýchodně od Olomouce v Hornomoravském úvalu na řece Bečvě, přibližně 200 m nad mořem a má rozlohu 58,48 km². Od 1. července 2006 je statutárním městem.

Město je důležitou dopravní křižovatkou. Přerov bylo také městem vojenským, sídlila zde 23. základna vrtulníkového letectva Edvarda Beneše. V budoucnu by mohl být Přerov křižovatkou Průplavu Dunaj-Odra-Labe a jedním z jeho hlavních přístavů (uvažuje se o studii k tomuto projektu). Část historického jádra města (Horní Město) je od roku 1992 městskou památkovou zónou. Někdejší podhradí se označuje jako Dolní město.

V komunálních volbách jsme kandidovali v koalici s názvem [Společně Pro Přerov](http://www.spolecneproprerov.cz/) (SPP).

Místní sdružení Přerov sdružuje Piráty z Přerova a Dobrčic. 

### Články
{% assign counter = 0 %}
{% for article in site.posts %}
{% if article.tags contains "přerov" and counter < 6 %}
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