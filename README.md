# Errors

Handles HTTP status codes to give more detailed information.

## Installation

Add this line to your application's Gemfile:

    gem 'errors'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install errors

## Usage

``error = Errors::Base.new(404)``

``error.code
=> 404``

``error.phrase
=> 'Not Found' ``

``error.description
=> indicates that the origin server did not find a current representation for the target resource or is not willing to disclose that one exists.``

``error.spec_title  
=> RFC7231#6.5.4``

``error.spec_href
=> http://tools.ietf.org/html/rfc7231#section-6.5.4``

## Contributing

1. Fork it ( https://github.com/[my-github-username]/errors/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
