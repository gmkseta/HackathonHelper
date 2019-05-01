class ApiController < ApplicationController
  protect_from_forgery :except => [:api_init, :api_message]

  def api_init
    @msg =
    {
      type: "buttons",
        buttons: [
        "멘토님 도와줘요",
        "노래이거 틀어주세여"
        ]
    }
    render json: @msg, status: :ok
  end  

  def api_message
    user_key = params[:user_key]
    content = params[:content]
    p init_buttons
    if content == "멘토님 도와줘요"
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
