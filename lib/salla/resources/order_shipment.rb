module Salla
  class OrderShipmentResource < Resource
    def list(order_id:, **params)
      response = get_request("/orders/#{order.id}/shipments")
      Collection.from_response(response, type: OrderShipment)
    end

    def cancel(order_id:)
      OrderShipment.new post_request("orders/#{order_id}/cancel-shipment").body
    end

    def update(order_id:, **attributes)
      OrderShipment.new put_request("orders/#{order_id}/update-shipment").body
    end
  end
end
