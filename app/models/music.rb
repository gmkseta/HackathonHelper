class Music < ApplicationRecord
    belongs_to :current_record, class_name: :UserRecord, foreign_key: "current_record_id"


    
end
