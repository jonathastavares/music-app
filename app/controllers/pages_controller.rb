class PagesController < ActionController::Base
    require 'rest-client'
    require 'json'
    before_action :authenticate_user!, only: %i[index]

    def index
        response = RestClient.get 'https://moat.ai/api/task/', headers={"Authorization" => "Basic ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=="}
        JSON.parse(response)
        return response
    end
end
