class DashboardsController < ApplicationController

  def index
    check_user 
  end

  private
  
    def check_user
      logger.debug "DashboardsController::check_user"
      unless current_user
        redirect_to user_sessions_url
        return false
      end
    end
end

