class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    id = cookies.encrypted[:user_id]
    id && User.find(id)
  end
end
