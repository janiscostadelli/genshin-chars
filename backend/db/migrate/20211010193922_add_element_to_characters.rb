class AddElementToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :element, :integer, default: 0
  end
end
