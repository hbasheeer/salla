module Salla
  class ProductResource < Resource
    def list(**params)
      response = get_request("products")
      Collection.from_response(response, type: Product)
    end

    def create(**attributes)
      Product.new post_resquest("products", body: attributes).body
    end

    def reterive(product_id:)
      Product.new get_request("products/#{product_id}").body
    end

    def update(product_id:, **attributes)
      Product.new put_request("products/#{product_id}").body
    end
  end
end
