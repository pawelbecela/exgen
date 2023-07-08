class RemovePositionFromNotes < ActiveRecord::Migration[7.0]
  def change
    remove_column :notes, :position, :integer
  end
end
