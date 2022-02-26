module Salla
  class UserResource < Resource
    def list(**params)
      response = get_request("users", params: params)
      Collection.from_response(response, type: User)
    end
  end
end
