class ApplicationController < ActionController::Base


    
  def check_role( user_id )
    if AdminUser.find(user_id).member?
      p "dsad"
    end
  end
end
