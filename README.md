# Sandpiles
My implementation of the __sandpiles__ algorithm,  
and dropping a ton of grains of sand on the center sandpile.

## Table of Contents
- [Description](#description)
  - [About Sandpiles](#about-sandpiles)
- [Installation](#installation)
- [Configuration](#configuration)
- [TODO](#todo)
  - [Quadtree](#quadtree)
    - [About Quadtree](#about-quadtree)
  - [Add comments to `settings.yml`](#add-comments-to-settingsyml)
- [License](#license)

## Description
This mini project is inspired by [Daniel Shiffman's Youtube video on Sandpiles][sandpiles-shiffman-url].  
It is my implementation of the Sandpiles alogrithm,  
written in Ruby using the [Gosu][gosu-url] gem for drawing on a graphical window.  
the script drops a large amount of sand grains onto the center sandpile  
and then lets the algorithm do its thing!  
It would be more fun to watch if its performance was better.

### About Sandpiles
Learn about __sandpiles__ at ...

- [Wikipedia][sandpiles-wikipedia-url]
- [Daniel Shiffman - Youtube][sandpiles-shiffman-url]
- [Numberphiles - Youtube][sandpiles-numberphiles-url]

## Installation
This project was developed with __Ruby__ version __2.5.1__,  
but it will probably work with older versions.

As this project uses the [Gosu][gosu-url] gem, you will need to install it  
and its dependencies on your system.
After having installed Gosu's dependencies, install Gosu manually with ...

```
$ gem install gosu
```

or from within the project's root directory with ...

```
$ bundle install --without development
```

then, you should by able to run the script with ...

```
$ ./sandpiles.rb
```

## Configuration
I tried to keep the any arbitrary values _(such as window size or  
sandpile size in pixels)_ defined in a configuration file at `settings.yml`.  
Feel free to check it out and play around with some values!

---

## TODO
- [ ] Quadtree
- [ ] Add comments to `settings.yml`
- [ ] Add screenshot to `README.md`

### Quadtree
The performance is very bad with a large amount of sandpiles.  
I would like to improve it by implementing a __quadtree__ system for  
less expensive finding of neighboring sandpiles.  
I was wanting to create a quadtree system anyway,  
based on [Daniel Shiffman's Youtube video][quadtree-shiffman-url].

#### About Quadtree
Learn about __quadtree__ at ...

- [Wikipedia][quadtree-wikipedia-url]
- [Daniel Shiffman - Youtube][quadtree-shiffman-url]

### Add comments to `settings.yml`
Add some descriptive comments to `settings.yml`,  
describing each value and what it effects.  
Maybe also extend it with some more settings for more configurability.

---

## License
This project is licensed under the [MIT License][MIT-url].

[sandpiles-wikipedia-url]:    https://en.wikipedia.org/wiki/Abelian_sandpile_model
[sandpiles-numberphiles-url]: https://www.youtube.com/watch?v=1MtEUErz7Gg
[sandpiles-shiffman-url]:     https://www.youtube.com/watch?v=diGjw5tghYU
[quadtree-wikipedia-url]:     https://en.wikipedia.org/wiki/Quadtree
[quadtree-shiffman-url]:      https://www.youtube.com/watch?v=OJxEcs0w_kE
[gosu-url]:                   https://www.libgosu.org/ruby.html
[MIT-url]:                    https://opensource.org/licenses/MIT
