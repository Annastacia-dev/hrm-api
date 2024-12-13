# frozen_string_literal: true

class CreatePersonalDetails < ActiveRecord::Migration[7.2]
  def change
    create_table :personal_details, id: :uuid do |t|

      t.references :employee, foreign_key: true, type: :uuid, null: false
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.datetime :date_of_birth, null: false
      t.string :phone_number, null: false

      t.timestamps null: false
    end
  end
end
