class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projtitle
      t.text :projdesc

      t.timestamps
    end
  end
end
