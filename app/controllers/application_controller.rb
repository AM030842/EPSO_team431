class ApplicationController < ActionController::Base
    # before_action :authenticate_admin!
    add_flash_types :info, :error, :success
end
