module Salla
  class UserResource < Resource
    def list(**params)
      response = get_request("users")
      Collection.from_response(response, type: User)
    end
  end
end
