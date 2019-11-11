class AddSavedToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :saved, :boolean
  end
end
