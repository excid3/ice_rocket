# IceRocket

A rubygem for accessing the IceRocket API written by Chris Oliver

## Installation

Add this line to your application's Gemfile:

    gem 'ice_rocket', '~> 0.0.2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ice_rocket

## Usage

Using the IceRocket API is as simple as creating a search object and
then fetching pages of results:

    search = IceRocket::Search.new("new york", :dl => Date.today - 2, :dh => Date.today, :per_page => 50)
    results = search.fetch :page => 3

    results["rss"]["channel"]["totalResults"] # 13760
    results["rss"]["channel"]["startIndex"]   # 101 = (page * per_page) + 1
    results["rss"]["channel"]["item"].length  # 50

There are a number of parameters and more readable equivalents that you
can use with the Search object:

    :dh  or :date_high - Upper limit of the date filter
    :dl  or :date_low  - Lower limit of the date filter
    :lng or :language  - Language ("en", "de", etc)
    :n   or :per_page  - Number of items per page. Must be less than or equal to 50

The fetch method also takes the following:

    :p or :page - The page number to retrieve

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
