module Salla
  class Collection
    attr_reader :data, :pagination

    def self.from_response(response, key:, type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
        success: body.dig["success"],
        status: body.dig["status"]
        error: body.dig["error"],
        pagination: body.dig("pagination")
      )
    end

    def initialize(data:, pagination:)
      @data = data
      @pagination = pagination
    end
  end
end
