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

The source currently includes 91 icons, whose names are the following:

* align-center
* bell-color
* chart
* coin-tail
* envelope
* language
* redo
* times-circle
* align-left
* bell
* check
* comments-dots-color
* eye-slash
* lock-open
* rewind
* times
* align-right
* birthday-cake
* chevron-circle-down
* comments-dots
* eye
* lock
* rocket-color
* trash
* angle-down
* bookmark-o
* chevron-circle-left-
* copy
* file
* login-alt
* rocket
* trophy
* angle-left
* bookmark
* chevron-circle-right
* credit-card-alt
* film
* login
* sand-clock
* user-plus.sv
* angle-right
* broom
* chevron-circle-up
* credit-card-color
* forward
* logout-alt
* search
* user
* angle-up
* bug
* chevron-down
* credit-card
* gift
* logout
* shopping-cart
* youtube-video
* arrow-down
* camera
* chevron-left
* crop
* globe
* music-square
* sliders
* arrow-left
* caret-down
* chevron-right
* dream-completed
* heart-o
* pencil
* star-o
* arrow-right
* caret-left
* chevron-up
* dream
* heart
* people
* star
* arrow-up
* caret-right
* cog
* edit
* image
* play
* story
* ban
* caret-up
* coin-head
* envelope-alt
* key
* plus-circle
* terms

## License

The MIT License
