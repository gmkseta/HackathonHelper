class UserRecord < ApplicationRecord
  belongs_to :button, optional: true
  belongs_to :before_record, class_name: :UserRecord, foreign_key: "before_record_id", optional: true
  def where_from
    if self.button.nil?
      #code
    else
      self.button.next_api.name
    end
  end
end
