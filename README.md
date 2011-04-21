Spritely
========

Spritely is a Ruby on Rails plugin that simplifies the process of using [CSS sprites](http://www.alistapart.com/articles/sprites) in your 
applications using [Sass](http://sass-lang.com/) and the [Compass CSS Framework](http://compass-style.org/).

Installation
------------

Spritely is compatible with Rails 2, but these instructions cater to the Rails 3 crowd..

Add this to your Gemfile:

``` ruby
gem 'haml'
gem 'compass'
```

Install the spritely plugin:

	rails plugin install git://github.com/zeke/spritely.git
	rails generate spritely

Usage
-----

Open _spritely.sass and customize it to fit your needs:

``` sass
$grid_size = 32px
$sprite_file = "sprites.png" # this path is relative to public/images/
```
  
Import the spritely partial into your main sass file, then define your sprite styles:

``` sass
@import "spritely"
.spritely  
	&.add
		@include linky_sprite(0) # This icon is at position 0 in the sprites.png (from the left)
	&.toggle
		@include linky_sprite(1, 16px) # This icon is at position 1, and it's smaller than the grid size.
```
      
Use the spritely view helpers:

``` ruby
spritely_link_to("Add to Favorites", add_to_favorites_path, :class => "favorite")
spritely_link_to_function("Toggle", "toggleSomeJazz()", :class => "toggle")
```

Notes
-----

You don't actually have to use Compass in your app, but Spritely relies on Compass' 
image_path method for doing dynamic string interpolation.

The plugin assumes you're using Compass' default path for your sass files, `/app/stylesheets/`

License
-------

Copyright (c) 2011 Zeke Sikelianos, released under the MIT license