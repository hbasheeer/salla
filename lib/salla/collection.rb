module Salla
  class Collection
    attr_reader :data, :pagination, :status, :error, :success

    def self.from_response(response, type:)
      body = response.body
      new(
        data: body["data"].map { |attrs| type.new(attrs) },
        success: body.dig("success"),
        status: body.dig("status"),
        error: body.dig("error"),
        pagination: body.dig("pagination")
      )
    end

    def initialize(data:, pagination:, error:, success:, status:)
      @data = data
      @pagination = pagination
      @success = success
      @error = error
      @status = status
    end
  end
end
