class Question < ApplicationRecord
    belongs_to :current_record, class_name: :UserRecord, foreign_key: "current_record_id"
    after_create :show_board

    def show_board
        Pusher.trigger('qa-channel', 'qa-event', {message:""})
    end
end
