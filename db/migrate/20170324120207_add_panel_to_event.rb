class AddPanelToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :panel, :boolean
  end
end
