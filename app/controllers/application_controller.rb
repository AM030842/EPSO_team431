class ApplicationController < ActionController::Base
    include Pundit::Authorization
    before_action :authenticate_admin!
end
