class ApiController < ApplicationController
  protect_from_forgery :except => [:api_init, :api_message]

  def api_init
    msg = Api.find_by_name("Init").get_message
    render json: msg, status: :ok
  end  

  def api_message
    user_key = params[:user_key]
    content = params[:content]
    last_record =  UserRecord.where(user_key: user_key).last
    if picked_button = Button.find_by_content(content)
      msg = picked_button.next_api&.get_message      
    else
      from = last_record&.where_from
      begin
        obj = Object.const_get from
        saved_obj = obj.create(user_key: user_key, content: content)
        msg = Api.find_by_name(from+"Done").get_message
      rescue
        msg = Api.find_by_name("ReInit").get_message
      end
    end
    

    if last_record&.content != content
        u_record = UserRecord.create(button: picked_button, user_key: user_key, content: content, before_record: last_record)
        saved_obj.update(user_record: u_record) if saved_obj.present?
    end

    render json: msg, status: :ok
  end

end
