module Salla
  class LanguageResource < Resource
    def list(**params)
      response = get_request("languages", params: params)
      Collection.from_response(response, type: Language)
    end
  end
end