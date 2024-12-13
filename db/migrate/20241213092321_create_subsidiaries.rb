class CreateSubsidiaries < ActiveRecord::Migration[7.2]
  def change
    create_table :subsidiaries, id: :uuid do |t|
      t.references :organization, null: false, foreign_key: true, type: :uuid
      t.string :country, null: false
      t.string :timezone, null: false

      t.timestamps
    end
  end
end
