class Comment < ActiveRecord::Base

belongs_to :user, :foreign_key => 'user_id' 
belongs_to :project, :foreign_key => 'project_id'
end
