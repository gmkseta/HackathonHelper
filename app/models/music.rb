class Music < ApplicationRecord
    belongs_to :user_record, class_name: :UserRecord, foreign_key: "user_record_id"
    

    
end
