module Salla
  class LanguageResource < Resource
    def list(**params)
      response = get_request("languages")
      Collection.from_response(response, type: Language)
    end
  end
end