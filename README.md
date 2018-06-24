# Sandpiles
My implementation of the __sandpiles__ algorithm,  
and dropping a ton of grains of sand on the center sandpile.

## Table of Contents
- [Description](#description)
  - [About Sandpiles](#about-sandpiles)
- [TODO](#todo)
  - [Quadtree](#quadtree)
  - [About Quadtree](#about-quadtree)
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

## TODO
### Quadtree
The performance is very bad with a large amount of sandpiles.  
I would like to improve it by implementing a __quadtree__ system for  
less expensive finding of neighboring sandpiles.  
I was wanting to create a quadtree system anyway,  
based on [Daniel Shiffman's Youtube video][quadtree-shiffman-url].

### About Quadtree
Learn about __quadtree__ at ...

- [Wikipedia][quadtree-wikipedia-url]
- [Daniel Shiffman - Youtube][quadtree-shiffman-url]

## License
This project is licensed under the [MIT License][MIT-url].

[gosu-url]:                   https://www.libgosu.org/ruby.html
[sandpiles-wikipedia-url]:    https://en.wikipedia.org/wiki/Abelian_sandpile_model
[sandpiles-numberphiles-url]: https://www.youtube.com/watch?v=1MtEUErz7Gg
[sandpiles-shiffman-url]:     https://www.youtube.com/watch?v=diGjw5tghYU
[quadtree-wikipedia-url]:     https://en.wikipedia.org/wiki/Quadtree
[quadtree-shiffman-url]:      https://www.youtube.com/watch?v=OJxEcs0w_kE
[MIT-url]:                    https://opensource.org/licenses/MIT
