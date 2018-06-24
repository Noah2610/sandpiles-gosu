#!/usr/bin/env ruby

require 'gosu'
require 'pathname'
require 'yaml'

require 'awesome_print'
require 'byebug'

ROOT = Pathname.new($0).realpath.dirname

DIR = {
  src:      ROOT.join('src'),
  settings: ROOT.join('settings.yml')
}

require DIR[:src].join 'extensions'
require DIR[:src].join 'Settings'
require DIR[:src].join 'Game'
require DIR[:src].join 'Grid'
require DIR[:src].join 'Cell'

module Sandpiles
  SETTINGS = Settings.new DIR[:settings]
  GAME = Game.new SETTINGS.get(:window)
  GAME.create_grid SETTINGS.get(:grid)
  GAME.show
end
