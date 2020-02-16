class AddCatchphraseToCharacters < ActiveRecord::Migration[5.1]
  def change
    column_add :characters, :catchphrase, :string
  end
end
