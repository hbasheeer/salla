module Salla
  class Client
    BASE_URL = "https://api.salla.dev/admin/v2"

    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter, stubs: nil)
      @api_key = api_key
      @adapter = adapter

      # Test stubs for requests
      @stubs = stubs
    end

    def orders
      OrderResource.new(self)
    end

    def order_status
      OrderStatusResource.new(self)
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|
        conn.request :authorization, :Bearer, api_key
        conn.request :json

        conn.response :dates
        conn.response :json, content_type: "application/json"

        conn.adapter adapter, @stubs
      end
    end
  end
end
