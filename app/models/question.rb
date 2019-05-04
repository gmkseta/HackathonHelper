class Question < ApplicationRecord
    belongs_to :user_record, optional: true
    after_update :show_board
    enum flag: %i[unsolved solved]
    belongs_to :user, optional: true

    def team
        self.user_record.before_record
    end

    def group
        self.team.before_record
    end
    
    def show_board
        if self.unsolved?
            Pusher.cluster="ap3"
            Pusher.trigger('qa-channel', 'qa-event', {group: group.content, team: team.content, content: self.content, id: self.id})
        end
    end    

    def solving user_id
        
    end

end

