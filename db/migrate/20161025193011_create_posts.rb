class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :tech
      t.boolean :poem
      t.integer :admin_id
      t.timestamps
    end
  end
end
