class ChangeCharactersNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :characters, :name, false
  end
end
