class RenameColumnNameComments < ActiveRecord::Migration
  def change
    rename_column :comments, :comment_project_id, :project_id
    rename_column :comments, :comment_user_id, :user_id
  end
end
