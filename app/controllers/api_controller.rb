class ApiController < ApplicationController
  protect_from_forgery :except => [:api_init, :api_message]

  def api_init
    msg = Api.find_by_name("Init").get_message
    render json: msg, status: :ok
  end  

  def api_message
    user_key = params[:user_key]
    content = params[:content]
    if picked_button = Button.find_by_content(content)
      msg = picked_button.next_api&.get_message      
    else
      last_record =  UserRecord.where(user_key: user_key).last
      if last_record.where_from == "Music"
        Music.create(user_key: user_key, content: content)
        msg = Api.find_by_name("MusicDone").get_message
      elsif last_record.where_from == "Question"
        Question.create(user_key: user_key, content: content)
        msg = Api.find_by_name("QuestionDone").get_message
      else
        msg = Api.find_by_name("Init").get_message
      end
      
    end
    
    UserRecord.create(button: picked_button, user_key: user_key, content: content)

    render json: msg, status: :ok
  end

end
