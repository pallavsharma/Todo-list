class Project < ActiveRecord::Base
  has_many :comments
  belongs_to :user, :foreign_key => 'user_id' 
end

