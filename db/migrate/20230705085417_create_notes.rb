class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.integer :position
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
