class CreateMysteryCards < ActiveRecord::Migration
  def change
    create_table :mystery_cards do |t|
      t.integer :user_id
      t.string :card_name

      t.timestamps null: false
    end
  end
end
