class Bamboo < ApplicationRecord
  belongs_to :user_record, optional: true
  after_create :show_board

  def show_board
    team = self.user_record.before_record
    group = team.before_record
    Pusher.trigger('bamboo-channel', 'bamboo-event', {})
  end 
  
end
