module Salla
  class OrderTagResource < Resource
    def list(**params)
      response = get_request("orders/tags", params: params)
      Collection.from_response(response, type: OrderTag)
    end

    def create(order_id:, **attributes)
      OrderTag.new post_request("orders/#{order_id}/tags", body: attributes).body
    end

    def delete(order_id:, tag_id:)
      OrderTag.new delete_request("orders/#{order_id}/tags/#{tag_id}").body
    end

  end
end
