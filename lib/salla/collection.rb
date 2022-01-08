module Salla
  class Collection
    attr_reader :data, :pagination

    def self.from_response(response, key:, type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
        pagination: body.dig("pagination")
      )
    end

    def initialize(data:, pagination:)
      @data = data
      @pagination = pagination
    end
  end
end
