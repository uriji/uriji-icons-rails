# uriji-icons-rails

[![Gem](https://img.shields.io/gem/v/uriji-icons-rails.svg)](https://rubygems.org/gems/uriji-icons-rails)

An asset gemification of the uriji-icons font library

## Installation

In your Gemfile include:

```ruby
gem "uriji-icons-rails"
```

And then execute:

```sh
bundle install
```

## Usage

In your `application.css`, include the css file:

```css
/*
 *= require uriji-icons
 */
```

Then restart your webserver if it was previously running.

### Sass Support

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your
`application.css.scss` file:

```scss
@import "uriji-icons";
```

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `application.css.sass` file:

```sass
@import uriji-icons
```

### Helpers

The `uj_icon` helper has been included. Some examples:

```ruby
uj_icon "story"
# => <i class="uj-story"></i>

uj_icon "dream", text: "Dream"
# => <i class="uj-dream"></i> Dream

uj_icon "milestone", text: "Milestone", class: "hidden"
# => <i class="uj-milestone hidden"></i> Milestone
```

## Icons

The source currently includes 48 icons, whose names are the following:

* audio
* bars
* best-sellers
* bookmark
* bookmark-alt
* buyers
* by-price
* camera
* chat
* completed
* content
* create
* delete
* description
* donation
* donation-alt
* dream
* edit-profile
* entry-wallet
* exit-wallet
* file
* follow
* following
* image
* lastet
* like
* like-o
* location
* lock-open
* media
* messages
* metrics
* milestone
* most-donated
* notifications
* profile
* rating
* search
* send
* settings
* story
* top
* top-users
* uriji-points
* verified
* video
* videochat
* youtube

## License

The MIT License
