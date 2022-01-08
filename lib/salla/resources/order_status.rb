module Salla
  class OrderStatusResource < Resource
    def list(**params)
      response = get_request("orders/statuses")
      Collection.from_response(response, key: "data", type: OrderStatus)
    end

    def update(order_id:, **attributes)
      OrderStatus.new post_request("orders/#{order_id}/statuses", body: attributes).body
    end

  end
end
