class RemoveMysteryCardsFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :player_1, :string
    remove_column :games, :player_2, :string
  end
end
