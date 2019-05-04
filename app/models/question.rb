class Question < ApplicationRecord
    belongs_to :user_record, optional: true
    after_update :show_board
    enum flag: %i[unsolved solved]
    belongs_to :admin_user, optional: true

    def team
        self.user_record.before_record
    end

    def group
        self.team.before_record
    end
    
    def show_board
        Pusher.cluster="ap3"
        Pusher.trigger('qa-channel', 'qa-event', {group: group.content, team: team.content, content: self.content})
    end    

    def solving user_id
        
    end

end

