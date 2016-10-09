# Metaxa

[![Build Status](https://travis-ci.org/mckomo/metaxa.svg?branch=master)](https://travis-ci.org/mckomo/metaxa)

Metaxa enables you to dynamically define variables in the main scope (main:Object).

## Usage

```ruby
require 'metaxa'

include Metaxa

introduce :foo, with_value: 'foo'

puts foo == 'foo' # true
puts foo === get(:foo) # true

set :foo, 'foobar'

puts foo == 'foobar' # true
puts foo === get(:foo) # true

self.foo = 'foobarbaz' # foo = ... will introduce new overlying variable

puts foo == 'foobarbaz' # true
puts foo === get(:foo) # true
```

See more constructive examples in `examples` dir :thumbsup:. 

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

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/test` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mckomo/metaxa. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
