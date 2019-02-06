class RemoveNameFromUserFiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_files, :name
  end
end
