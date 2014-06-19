class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :comment_project_id
      t.integer :comment_user_id

      t.timestamps
    end
  end
end
