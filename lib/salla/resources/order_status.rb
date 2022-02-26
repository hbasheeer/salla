module Salla
  class OrderStatusResource < Resource
    def list(**params)
      response = get_request("orders/statuses", params: params)
      Collection.from_response(response, type: OrderStatus)
    end

    def update(order_id:, **attributes)
      OrderStatus.new post_request("orders/#{order_id}/statuses", body: attributes).body
    end

  end
end
