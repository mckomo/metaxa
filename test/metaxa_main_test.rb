$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'bundler/setup'
require 'metaxa'
require 'test/unit'
require 'colorize'

include Metaxa

extend Test::Unit::Assertions

# Test value types
introduce :lucky_number, with_value: 14

assert defined? lucky_number

assert_equal lucky_number, 14
assert_equal get(:lucky_number), 14

set :lucky_number, 7

assert_equal lucky_number, 7
assert_equal get(:lucky_number), 7

self.lucky_number = 21

assert_equal lucky_number, 21
assert_equal get(:lucky_number), 21

# Test reference types
refrence_value = Object.new

introduce :my_object, with_value: refrence_value

assert_equal my_object, refrence_value

# Test symbols
introduce :symbol_var

assert defined? symbol_var

puts 'Main object test completed'.colorize(:green)
