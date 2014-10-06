class CreateManufacturersTable < ActiveRecord::Migration
  def change
    create_table :manufacturers_tables do |t|
      t.string :name, null: false, uniqueness: true
      t.string :country, null: false
    end
  end
end
