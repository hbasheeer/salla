module Salla
  class TaxResource < Resource
    def list(**params)
      response = get_request("taxes", params: params)
      Collection.from_response(response, type: Tax)
    end

    def create(**attributes)
      Tax.new post_request("taxes", body: attributes).body
    end

    def update(tag_id:, **attributes)
      Tax.new put_request("taxes/#{tag_id}", body: attributes).body
    end

    def retrieve(tax_id:)
      Tax.new get_request("taxes/#{tax_id}").body
    end

    def delete(tax_id:)
      Tax.new delete_request("taxes/#{tax_id}")
    end

  end
end
