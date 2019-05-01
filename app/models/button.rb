class Button < ApplicationRecord
  belongs_to :next_api, class_name: :Api, foreign_key: "next_api_id", optional: true
  belongs_to :keyboard
end
