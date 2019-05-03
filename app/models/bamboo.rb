
class Bamboo < ApplicationRecord
  belongs_to :user_record, optional: true
  after_update :show_board
  def show_board
    team = self.user_record.before_record
    group = team.before_record
    Pusher.trigger('bb-channel', 'bb-event', {content: self.content})
  end 
end
