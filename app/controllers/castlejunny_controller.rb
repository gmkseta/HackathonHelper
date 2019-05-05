class CastlejunnyController < ApplicationController
  def index
    @bamboos = Bamboo.limit(15).order(created_at: :desc).reverse
    @questions = Question.unsolved
    @rankers = User.all.order(kill_point: :desc)
  end
  def ranker
    @rankers = User.all.order(kill_point: :desc)
    respond_to :js
  end
  def ban
  end
end
