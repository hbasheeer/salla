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

    def orders_status
      OrderStatusResource.new(self)
    end

    def orders_tag
      OrderTagResource.new(self)
    end

    def orders_shipment
      OrderShipmentResource.new(self)
    end

    def customers
      CustomerResource.new(self)
    end

    def cities
      CityResource.new(self)
    end

    def countries
      CountryResource.new(self)
    end

    def languages
      LanguageResource.new(self)
    end

    def branches
      BranchResource.new(self)
    end

    def brands
      BrandResource.new(self)
    end

    def products
      ProductResource.new(self)
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
