class AddCharacterToUkes < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM characters;'
    add_reference :ukes, :character, null: false, index: true
  end

  def down
    remove_refernce :ukes, :character, index: true
  end
end
