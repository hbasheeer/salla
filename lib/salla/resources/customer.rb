module Salla
  class CustomerResource < Resource
    def list(**params)
      response = get_request("customers")
      Collection.from_response(response, type: Country)
    end

    def reterive(customer_id:)
      Category.new get_request("customers/#{country_id}").body
    end

  end
end
