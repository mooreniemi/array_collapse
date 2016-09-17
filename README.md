# Array#collapse

A C extension alternative to using `flatten.compact` or `flatten.map`.
Slight performance improvement (just a constant factor better) than the
common idioms, with exactly the same memory performance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'array_collapse'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install array_collapse

## Usage

```ruby
2.2.2 :001 > require 'array_collapse'
 => true
2.2.2 :002 > [1, 2, [3], nil].collapse {|e| e.nil? ? e : e * 2 }
 => [2, 4, 6]
2.2.2 :003 > [1, [2, [3, nil]]].collapse
 => [1, 2, 3]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/mooreniemi/array_collapse. This project is intended to
be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the [Contributor
Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
