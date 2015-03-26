# Movie Search

[![Build Status](https://travis-ci.org/rtezera1/search-gem.svg?branch=master)](https://travis-ci.org/rtezera1/search-gem)

[![Coverage Status](https://coveralls.io/repos/rtezera1/search-gem/badge.svg)](https://coveralls.io/r/rtezera1/search-gem)

Gem that interacts with the OMDapi to find the years movies were released.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'movie-search'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install movie-search

## Usage

```ruby
  require 'movie-search'

  moviesList = ['Titanic', 'The-Matrix', 'Training-day']

  search = Search.new(moviesList)

  result = search.OMDBapi

  puts result = {'Titanic' => '1997', 'The Matrix' => '1999', 'Training Day' => '2001' }

  or use it by parsing excel spreadsheet

    excel_path = Dir.pwd + "/spec/movies.xls"
    parsed = Parse.new excel_path
    titles = parsed.parse
    search = Search.new titles
    puts search = {"Titanic"=>"1997", "Training Day"=>"2001", "A Few Good Men"=>"1992", "Rounders"=>"1998", "The Godfather"=>"1972"}
  
```

