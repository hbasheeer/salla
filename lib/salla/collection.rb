module Salla
  class Collection
    attr_reader :data, :pagination, :status, :error, :success

    def self.from_response(response, key:, type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
        success: body.dig["success"],
        status: body.dig["status"],
        error: body.dig["error"],
        pagination: body.dig("pagination")
      )
    end

    def initialize(data:, pagination:, :error, :success, :status)
      @data = data
      @pagination = pagination.empty? ? nil : pagination
      @status = status
      @error = error.empty? ? nil : error
      @status = status
    end
  end
end
