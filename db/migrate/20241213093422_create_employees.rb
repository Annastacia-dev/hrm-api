# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees, id: :uuid do |t|
      t.references :user, foreign_key: true, type: :uuid, null: false
      t.timestamps null: false
    end
  end
end
