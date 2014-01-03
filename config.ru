# setup dependencies with Bundler
require 'rubygems'
require 'bundler'
Bundler.require

# run App..
$LOAD_PATH << '.'
require 'app'
run Sinatra::Application