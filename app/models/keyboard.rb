class Keyboard < ApplicationRecord
    has_one :api

    enum key_type: %i[text buttons]


    
    def get_buttons
        self.button.present? ? self.buttons.split("/") : []
    end
    def keyboard_hash
        return { type: self.key_type, buttons: self.get_buttons }
    end

end
