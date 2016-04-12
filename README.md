# GoogleCompanySearch

A google scrape tool to provide a URL by searching for a company name

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google_company_search'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google_company_search

## Usage
require 'google_company_search'

```ruby
GoogleCompanySearch.search("Boeing") #returns "http://www.boeing.com/"
GoogleCompanySearch.search("My Company Name Here", "St. Louis, Missouri")
```
## Todo: The blacklist could be made into a YML file. Or something else outside code.

## Contributing

1. Fork it ( https://github.com/creativereason/google_company_search/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
