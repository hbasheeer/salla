module Salla
  class CustomerGroupResource < Resource
    def list(**params)
      response = get_request("/customers/groups")
      Collection.from_response(response, type: CustomerGroup)
    end
  end
end
