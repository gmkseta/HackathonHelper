class MobileController < ApplicationController
  layout "mobile"
  before_action :authenticate_user!
  def index
    @questions = Question.unsolved
  end

  def finger_snap
    question = Question(params[:id])
    
  end
end
