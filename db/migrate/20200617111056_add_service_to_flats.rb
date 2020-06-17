class AddServiceToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :groceries, :boolean, default: false
    add_column :flats, :laundry, :boolean, default: false
    add_column :flats, :sexy_time, :boolean, default: false
    add_column :flats, :cooking, :boolean, default: false
    add_column :flats, :gardening, :boolean, default: false
    add_column :flats, :cleaning, :boolean, default: false
    add_column :flats, :change_diapers, :boolean, default: false
  end
end
