class Question < ApplicationRecord
    belongs_to :user_record
    after_create :show_board

    def show_board
        #self.
        #Pusher.trigger('qa-channel', 'qa-event', {group:})
    end
end

