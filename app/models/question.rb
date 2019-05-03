class Question < ApplicationRecord
    belongs_to :user_record, class_name: :UserRecord, foreign_key: "user_record_id"
    after_create :show_board
    def show_board
        team = self.user_record.before_record
        group = team.before_record
        Pusher.trigger('qa-channel', 'qa-event', {group: group.content, team: team.content, question: self.content})
    end    
end

