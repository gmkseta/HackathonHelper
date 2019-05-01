class Api < ApplicationRecord
  belongs_to :keyboard


  def get_message
    
    if self.name == "Init"
      msg = self.keyboard.k_hash
    else
      msg = {
        message: {
          text: self.message
        },
        keyboard: self.keyboard.k_hash
      }
    end

    return msg
  end
end
