$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'bundler/setup'
require 'metaxa'
require 'test/unit'
require 'colorize'

extend Test::Unit::Assertions

class FooInstance
  include Metaxa

  def setup(number)
    introduce :lucky_number, with_value: number
  end
end

foo = FooInstance.new
foo.setup(14)
assert_equal foo.lucky_number, 14

foo_without_setup = FooInstance.new
assert_raises(NoMethodError) { foo_without_setup.lucky_number }

puts 'Instance test completed'.colorize(:green)
