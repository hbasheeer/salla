module Salla
  class CityResource < Resource

    def list(country_id:, **params)
      response = get_request("/countries/{country_id}/cities", params: params)
      Collection.from_response(response, type: City)
    end

  end
end
