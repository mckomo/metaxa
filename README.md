# Metaxa

Metaxa enables you to dynamicly define variables in root scope (main:Object) of your program.

## Usage

```ruby
require 'metaxa'

include Metaxa

introduce :foo, with_value: 'foo'

puts foo == 'foo' # true
puts foo === get(:foo) # true

foo = 'bar'

puts foo == 'bar' # true
puts foo = get(:foo) # true

set :foo, 'foobar'

puts foo == 'foobar' # true
puts foo = get(:foo) # true
```

See more examples in `test/metaxa_test.rb` file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'metaxa'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metaxa

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mckomo/metaxa. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

