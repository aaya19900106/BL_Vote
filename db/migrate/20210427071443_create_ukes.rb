class CreateUkes < ActiveRecord::Migration[5.2]
  def change
    create_table :ukes do |t|
      t.timestamps
    end
  end
end
