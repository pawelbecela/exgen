class AddLowToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :low, :integer
  end
end
