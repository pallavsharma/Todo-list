class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def auth_user
    # if user_signed_in?         
    #   redirect_to projects_url
    # else
    redirect_to new_user_session_url unless user_signed_in?
  end

  # rescue_from CanCan::AccessDenied do | exception |
  #   redirect_to projects_url, alert: exception.message
  # end

  def comment_params
    params.require(:comment).permit(:content, :comment_project_id, :comment_user_id)
  end
 
end
