class RemoveAgeFromCharacters < ActiveRecord::Migration[6.1]
  def change
    remove_column :characters, :age, :integer
  end
end
