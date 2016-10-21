$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'bundler/setup'
require 'metaxa'
require 'test/unit'
require 'colorize'

extend Test::Unit::Assertions

class BarClass
  extend Metaxa
  introduce :lucky_number, with_value: 14
end

assert_equal BarClass.lucky_number, 14

puts 'Class test completed'.colorize(:green)
