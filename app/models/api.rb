class Api < ApplicationRecord
  belongs_to :keyboard


  def get_message
    msg = {
      message: {
        
      } 
    }
  end
end
