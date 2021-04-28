class CreateSemes < ActiveRecord::Migration[5.2]
  def change
    create_table :semes do |t|
      t.references :character, index: true, null: false
      t.timestamps
    end
  end
end
