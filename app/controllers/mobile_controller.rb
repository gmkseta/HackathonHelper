class MobileController < ApplicationController
  layout "mobile"
  before_action :authenticate_user!
  def index
    @questions = Question.unsolved
  end

  def finger_snap
    question = Question.find(params[:id])
    if question.solved?
      redirect_to '/mobile/index', alert: '이미 누군가 해결함'
    else
      question.update(flag: "solved", user: current_user)
      kill_point = current_user.kill_point
      current_user.update(kill_point: kill_point+1)
      
      Pusher.trigger('fs-channel', 'finger-snap', {question: question.id})
      redirect_to '/mobile/index', notice: '뙇'
    end
  end
end
