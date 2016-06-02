class AddCounterToMysteryCards < ActiveRecord::Migration
  def change
    add_column :mystery_cards, :counter, :integer
  end
end
