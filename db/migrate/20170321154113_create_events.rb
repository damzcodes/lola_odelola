class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string   :topic
      t.string   :name
      t.boolean  :talk
      t.boolean  :workshop
      t.datetime :date

      t.timestamps
    end
  end
end
