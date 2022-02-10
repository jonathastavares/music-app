class PagesController < ActionController::Base
    before_action :authenticate_user!, only: %i[index]
    def index
    end
end
