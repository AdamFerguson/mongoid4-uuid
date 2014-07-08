# Mongoid4::UUID

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid4-uuid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid4-uuid

## Usage

Include this module in your Mongoid models and you will get UUID's for _id's

```ruby
class Model
  include Mongoid::Document
  include Mongoid4::UUID
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
