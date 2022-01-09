module Salla
  class OrderResource < Resource
    def list(**params)
      response = get_request("orders")
      Collection.from_response(response, type: Order)
    end

    def create(**attributes)
      Order.new post_request("orders", body: attributes).body
    end

    def retrieve(order_id:)
      Order.new get_request("orders/#{order_id}").body
    end

    def retrieve_histories(order_id:, **params)
      response = get_request("orders/#{order_id}/histories")
      Collection.from_response(response, type: OrderHistory)
    end

  end
end
