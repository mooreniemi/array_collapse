# Array#collapse


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
2.2.2 :003 >
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `array_collapse.gemspec`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/mooreniemi/array_collapse. This project is intended to
be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the [Contributor
Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
