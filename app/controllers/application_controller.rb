class ApplicationController < ActionController::Base
  

    
  def check_role( user_id )
    if AdminUser.find(user_id).member?
      p "dsad"
    end
  end
  private
  def after_sign_out_path_for(resource_or_scope)
    '/users/sign_in'
  end
end
