module Salla
  class OrderResource < Resource
    def list(**params)
      Order.new get_request("orders")
      Collection.from_response(response, key: "orders", type: Order)
    end

    def create(**attributes)
      Order.new post_request("orders", body: attributes).body
    end

    def retrieve(order_id:)
      Order.new get_request("orders/#{order_id}").body
    end

  end
end
