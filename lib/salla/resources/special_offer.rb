module Salla
  class SpecialOfferResource < Resource
    def list(**params)
      response = get_request("specialoffers", params: params)
      Collection.from_response(response, type: SpecialOffer)
    end

    def create(**attributes)
      SpecialOffer.new post_request("specialoffers", body: attributes).body
    end

    def update(special_offer_id:, **attributes)
      SpecialOffer.new put_request("specialoffers/#{special_offer_id}", body: attributes).body
    end

    def retrieve(special_offer_id:)
      SpecialOffer.new get_request("specialoffers/#{special_offer_id}").body
    end

    def delete(special_offer_id:)
      SpecialOffer.new delete_request("specialoffers/#{special_offer_id}")
    end

  end
end
