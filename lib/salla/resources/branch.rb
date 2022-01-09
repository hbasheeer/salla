module Salla
  class BranchResource < Resource
    def list(**params)
      response = get_request("branches")
      Collection.from_response(response, type: Branch)
    end

    def create(**attributes)
      Brand.new post_resquest("branches", body: attributes).body
    end

    def reterive(branch_id:)
      Brand.new get_request("branches/#{branch_id}").body
    end

    def update(branch_id:, **attributes)
      Brand.new put_request("branches/#{branch_id}").body
    end
  end
end
