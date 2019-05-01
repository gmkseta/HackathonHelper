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
      UserRecord.create(button: picked_button, user_key: user_key, content: content)
      @msg = picked_button.next_api&.get_message
    else
      last_record =  UserRecord.find_by_user_key(user_key)
      if last_record.next_api.name == "Music"
        
      else
      end

    end
    


    if true || content == "멘토님 도와줘요"
      @msg = 
      {
        message:{
          text: "sdad"
        },
        keyboard: Api.find_by_name("Init").keyboard.k_hash
      }  
    elsif content == "노래이거 틀어주세여"
      @msg = 
      {
        message:{
          text: "sdad"
        },
        keyboard:{
          type: "buttons",
            buttons: [
            "멘토님 도와줘요",
            "노래이거 틀어주세여"
            ]
        } 
      }  
    else
      @msg = 
      {
        message:{
          text: "error"
        },
        keyboard:{
          type: "buttons",
            buttons: [
            "멘토님 도와줘요",
            "노래이거 틀어주세여"
            ]
        } 
      }
    end
    render json: @msg, status: :ok
  end

end
