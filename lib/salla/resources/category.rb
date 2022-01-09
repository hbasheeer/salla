module Salla
  class CategoryResource < Resource
    def list(**params)
      response = get_request("categories")
      Collection.from_response(response, type: Category)
    end

    def create(**attributes)
      Category.new post_resquest("categories", body: attributes).body
    end

    def reterive(category_id:)
      Category.new get_request("categories/#{category_id}").body
    end

    def update(category_id:, **attributes)
      Category.new put_request("categories/#{category_id}").body
    end
  end
end
