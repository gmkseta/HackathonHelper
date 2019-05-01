class Keyboard < ApplicationRecord
    has_one :api

    enum :key_type: %i[text buttons]


    
    def self.get_buttons
        self.button.split(",")
    end

end
