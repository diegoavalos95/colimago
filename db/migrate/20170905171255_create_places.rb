class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :coordinates
      t.text :keywords

      t.timestamps
    end
  end
end
