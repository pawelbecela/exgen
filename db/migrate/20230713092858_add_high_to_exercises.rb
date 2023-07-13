class AddHighToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :high, :integer
  end
end
