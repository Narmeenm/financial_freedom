class RemoveDescriptionFromGoals < ActiveRecord::Migration[5.2]
  def change
    remove_column :goals, :description, :string
  end
end
