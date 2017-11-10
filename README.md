# IndependentReserveClient::Ruby

Ruby Wrapper for [IndependentReserve's API](https://www.independentreserve.com/API#overview)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'independent_reserve_client-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install independent_reserve_client-ruby

## Usage

```ruby
client = IndependentReserveClient.new

# Returns a current snapshot of the Independent Reserve market for a given currency pair.
client.get_market_summary("XBT", "AUD")

# Returns an exchange rate for the given currency pair
client.get_exchange_rate("XBT", "AUD")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/imacchiato/independent_reserve_client-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IndependentReserveClient::Ruby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/independent_reserve_client-ruby/blob/master/CODE_OF_CONDUCT.md).
