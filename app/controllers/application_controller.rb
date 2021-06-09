class ApplicationController < ActionController::Base

  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    else
      if @current_user.id != params[:id].to_i
        redirect_to login_url
      end
    end
  end

end
