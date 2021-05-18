# jekyll-theme-pirati

Theme of Czech Pirate Party.

[![Gem Version](https://badge.fury.io/rb/jekyll-theme-pirati.svg)](https://badge.fury.io/rb/jekyll-theme-pirati)

## Installation & usage

For usage see [USAGE.md](USAGE.md)

## Updating to 8.x

8.x version features a fully revamped UI based on our new [UI
styleguide](https://styleguide.pir-test.eu/). The theme no longer has it's own
CSS styles. Instead, all the styles are being provided by the styleguide itself.
Same applies to JS: whole webpack asset pipeline has been dropped which
resulted in a lot simpler design. This version is a transition one before
migrating to Wagtail-driven websites. No more major updates will follow, only
bugfixes a maybe some minor adjustments.

### New features

#### Sub links for campaigns

You can now add sub link super buttons to campaign pages. To add it, provide the `subLinks` property of the particular campaign
record with following shape:

```
subLinks:
  - title: Povolební strategie
    icon: ico--strategy
    classes: bg-grey-125 hover:bg-black hover:text-white
    href: /
  - title: Financování kampaně
    icon: ico--calculator
    classes: bg-black text-white hover:bg-grey-125 hover:text-black
    href: /
```

#### Transarency section in the footer

Footer section listing transparent accounts and stuff can be enabled/disabled
using `transparencySection: true/false` property in the `_data/menu.yml`.


#### New includes

- `_includes/avatar.html` - creates [avatar image](https://styleguide.pir-test.eu/latest/?p=viewall-atoms-avatars)
- `_includes/buttons/basic.html` - a [button without icon](https://styleguide.pir-test.eu/latest/?p=atoms-button-colors)
- `_includes/buttons/icon.html` - a [button with icon](https://styleguide.pir-test.eu/latest/?p=atoms-button-colors)
- `_includes/buttons/super.html` - a [super button](https://styleguide.pir-test.eu/latest/?p=viewall-atoms-super-buttons)
- `_includes/calendar.html` - a [calendar widget](https://styleguide.pir-test.eu/latest/?p=molecules-js-calendar)
- `_includes/contact-line.html` - a generic [contact line](https://styleguide.pir-test.eu/latest/?p=viewall-atoms-contact-lines)
- `_includes/countdown.html` - a [countdown widget](https://styleguide.pir-test.eu/latest/?p=viewall-organisms-countdown)
- `_includes/hero/simple.html` - a [simple hero banner](https://styleguide.pir-test.eu/latest/?p=templates-pirate-center)
- `_includes/hero/advanced.html` - a [complex hero banner](https://styleguide.pir-test.eu/latest/?p=templates-elections)

#### New pagination

You should update your pagination settings to `12` instead of `11`.

#### Set styleguide url in the config

Add `styleguide_base_url` property pointing to styleguide version you want to use.

#### New pirate-center layout

Provide front matter like following:

```yaml
title: ParduPiCe - Pardubické pirátské centrum
shorthand: ParduPiCe
openingHoursSEO: Mo-Fr 9:00-17:00
heroHeadline: Zbrusu nové krajské pirátské centrum!
heroDescription: V Pardubicích jsme otevřeli nové pirátské centrum pod zkratkou ParduPiCe.
img: pardupice/1.jpg
address: |
  Pardubické pirátské centrum
  Budova T-STRING
  Masarykovo náměstí 1484
  530 02 Pardubice I
addressNote: Vstup do pirátského centra naleznete z boku budovy T-STRING naproti „AFI paláci“, vedle kadeřnictví. Vchod je v prostoru vjezdu na parkoviště ve vnitrobloku.
contactPersons:
  - id: filip.varecha
    description: Správce coworku
  - id: jan.bednar
    description: Produkce
calendarId: t60uj67580oudjh04tuh5icl8o@group.calendar.google.com
calendarTitle: Kalendář akcí
calendarPage: https://calendar.google.com/calendar/embed?src=t60uj67580oudjh04tuh5icl8o%40group.calendar.google.com&ctz=Europe%2FPrague
mapIframeLink: https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10250.279531989467!2d15.770466!3d50.0381549!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd4d03352a17e038b!2zUGFyZHVQaUNlIOKAkyBQYXJkdWJpY2vDqSBQaXLDoXRza8OpIGNlbnRydW0!5e0!3m2!1scs!2scz!4v1568565921492!5m2!1scs!2scz
```

If you provide `calendarId`, it will display the event list automatically.


#### Display party affiliation on person page

To display, add `partyUid: [party_uid]` in the page front matter.

#### Use customized hero background on person page

To use it fully, provide `heroImg` in the person markdown file.

#### Highlight important articles

These will show as the [emphasized variant in black](https://styleguide.pir-test.eu/latest/?p=viewall-molecules-article-card).

#### Organizations can personalise their onboard and donate links in header and footer

Set `organization.donateLink` (defaults to dary.pirati.cz) and
`organization.onboardingLink` (defaults to nalodeni.pirati.cz) in the Jekyll
config.


### Backwards incompatible changes

#### Candidate lists

New data entity `parties` has been introduced. Needs to be added as `_data/parties.yml`. It's an array with following structure:

```
- uid: [party_id]
  name: [party_verbose_name]
  logoImg: [party_image_in_svg_format]
```

All existing candidate lists need to be updated. Specifically, `party` property
has to be replaced with `partyUid` pointing to actual `uid` in `parties.yml`.

#### Font awesome dropped in favor of custom iconset

As the result, all the `fa*` icons won't work anymore. New icons has `ico--*` naming instead. See the [styleguide](https://styleguide.pir-test.eu/latest/?p=viewall-atoms-icons) for an overview of available icons. You will need to update your icons should you used some. Namely, icons will have to be updated in the `menu.yml`.


#### Some deleted templates

- `_includes/article-box/three-in-row.html` - replaced with `_includes/article-box/list.html`
- `_includes/rbar/bar_photo.html` - now replaced with `bar_profile.html` that already contains a picture
- `_includes/rbar/bar_person_contact.html` - now replaced with `bar_profile.html` that already contains a contact section


#### Obsolete JS widgets

Following widgets won't work (source kept in repository for future possible use):

- Agenda - replaced with calendar from styleguide
- Intention map - no replacement
- Custom layer map - no replacement
- Site search - no replacement, no site search available anymore

## Updating to 7.x

Tag `_config.yml organization contactUid` is not used. Contacts person in bottom are popele with category `kontaktni_osoba`.

## Updating to 6.x

To upgrade to v6 which features major visual upgrade, following steps are necessary:

 - For `_people` collection, remove `fullaname` property for every document. Instead, provide `titles` property to keep academic degrees in following format:

    ```
    titles:
      before: MUDr.
      after:  Ph.D.
    ```
 - To make your contact page look OK, you will need to wrap it's  sub-heading in following fashion:

    ```
    <div class="o-section-header o-section-header--indented">
      <h1 class="t-h2-alt">Přidejte se</h1>
    </div>
    ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pirati-web/jekyll-theme-pirati/. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

See [development](development.md).

## License

The theme is available as open source under the terms of the [MIT
License](https://opensource.org/licenses/MIT).

