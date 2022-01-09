module Salla
  class CountryResource < Resource
    def list(**params)
      response = get_request("countries")
      Collection.from_response(response, type: Country)
    end

    def reterive(country_id:)
      Category.new get_request("countries/#{country_id}").body
    end

  end
end
