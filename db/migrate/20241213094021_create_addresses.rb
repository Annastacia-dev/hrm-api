class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses, id: :uuid do |t|
      t.string :country, null: false, default: "Kenya"
      t.string :county
      t.string :city
      t.string :street
      t.string :building_name
      t.string :house_number
      t.string :postal_code
      t.string :landmark
      t.string :coordinates
      t.string :po_box
      t.references :addressable, null: false, polymorphic: true, type: :uuid

      t.timestamps
    end
  end
end
