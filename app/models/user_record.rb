class UserRecord < ApplicationRecord
  belongs_to :button, optional: true

  def where_from
    if self.button.nil?
      #code
    else
      self.button.next_api.name
    end

  end
end
