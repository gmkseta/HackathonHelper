class CastlejunnyController < ApplicationController
  def index
    @bamboos = Bamboo.order(created_at: :desc).limit(10)
    @bamboos.reorder(created_at: :asc)
  end
end
