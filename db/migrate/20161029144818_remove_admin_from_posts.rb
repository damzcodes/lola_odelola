class RemoveAdminFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :admin_id
  end
end
