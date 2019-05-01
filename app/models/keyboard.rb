class Keyboard < ApplicationRecord
    has_one :api
    has_many :buttons, dependent: :destroy
    enum key_type: %i[text buttons]

    accepts_nested_attributes_for :buttons

    def k_hash
        return { type: self.key_type, buttons: self.buttons.pluck(:content) }
    end

end
