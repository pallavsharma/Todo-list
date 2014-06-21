class AddAttachmentAttachfileToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :attachfile
    end
  end

  def self.down
    drop_attached_file :projects, :attachfile
  end
end
