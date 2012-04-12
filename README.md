# IceRocket

A rubygem for accessing the IceRocket API

## Installation

Add this line to your application's Gemfile:

    gem 'ice_rocket'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ice_rocket

## Usage

results = IceRocket::Search.new('apple+notebook').fetch
puts results.to_s

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
