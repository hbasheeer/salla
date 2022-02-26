# Salla API Rubygem

A Ruby wrapper for the [Salla](https://salla.sa/site/) API. Currently supports [API v2](https://docs.salla.dev/docs/merchant/ZG9jOjIzMjE3MjMx-get-started).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'salla', github: "hbasheer/salla"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install salla

## Usage

To access the API, you'll need to create a `Salla::Client` and pass in your API key. You can find your API key at [https://s.salla.sa/settings/component/dashboard-api](https://s.salla.sa/settings/component/dashboard-api)

```ruby
client = Salla::Client.new(api_key: ENV["SALLA_API_KEY"])
```

The client then gives you access to each of the resources.

## Resources

The gem maps as closely as we can to the Vultr API so you can easily convert API examples to gem code.

Responses are created as objects like `Salla::Account`. Having types like `Salla::User` is handy for understanding what type of object you're working with. They're built using OpenStruct so you can easily access data in a Ruby-ish way.

##### Pagination

`list` endpoints return pages of results. The result object will have a `data` key to access the results, as well as metadata like `pagination` for retrieving the next and previous pages. You may also specify the

```ruby
results = client.orders.list
#=> Salla::Collection

results.pagination
#=> { "count": 2,
      "total": 2,
      "perPage": 15,
      "currentPage": 1,
      "totalPages": 1,
      "links": [] 
    }

results.data
#=> [#<Salla::Order>, #<Salla::Order>]

# Retrieve the next page
client.orders.list(page: 2)
#=> Salla::Collection
```

##### Order
```ruby
client.orders.list
client.orders.create({ })
client.orders.retrieve(order_id: id)
client.orders.retrieve_histories(order_id: order_id, { })
```

##### OrderStatus
```ruby
client.order_statuses.list
client.order_statuses.update({ })
```

## Contributing

1. Fork it ( https://github.com/hbasheer/salla/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
