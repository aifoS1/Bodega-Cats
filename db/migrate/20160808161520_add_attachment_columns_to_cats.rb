class AddAttachmentColumnsToCats < ActiveRecord::Migration
  def change
    add_attachment :cats, :avatar
  end
end
