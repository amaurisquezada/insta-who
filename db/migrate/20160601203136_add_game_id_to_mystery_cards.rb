class AddGameIdToMysteryCards < ActiveRecord::Migration
  def change
    add_column :mystery_cards, :game_id, :integer
  end
end
