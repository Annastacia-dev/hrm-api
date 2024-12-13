class CreateBranches < ActiveRecord::Migration[7.2]
  def change
    create_table :branches, id: :uuid do |t|
      t.references :subsidiary, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
