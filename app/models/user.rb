class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions

  def self.import(file)
    CSV.foreach(file.path, headers: true,encoding: "ISO8859-1:utf-8") do |row|
      begin 
        User.create! row.to_hash
      rescue
        next
      end
    end
  end
  
end
