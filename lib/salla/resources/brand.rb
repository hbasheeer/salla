module Salla
  class BrandResource < Resource
    def list(**params)
      response = get_request("brands")
      Collection.from_response(response, type: Brand)
    end

    def create(**attributes)
      Brand.new post_resquest("brands", body: attributes).body
    end

    def reterive(brand_id:)
      Brand.new get_request("brands/#{brand_id}").body
    end

    def update(brand_id:, **attributes)
      Brand.new put_request("brands/#{brand_id}").body
    end
  end
end
