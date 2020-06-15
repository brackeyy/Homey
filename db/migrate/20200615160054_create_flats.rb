class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :city
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
