class GamesController < ApplicationController

  before_filter :authorize
  
  def new
  end

  def create
  end

  def show
  	@mygame = Game.find(1)
  	@mycard = @mygame.cards.sample
  	MysteryCard.where(user_id: 1, game_id: @mygame.id).destroy_all
  	MysteryCard.create(user_id: 1, game_id: @mygame.id, card_name: @mycard.name, counter: 0)
    @available_tags = @mygame.cards.map{|card| card.tags.map{|tag| tag.description}}.flatten.uniq
  end

  def update_card_position
  	@mygame = Game.find(1)
  	@mysterycard = MysteryCard.where(user_id: 1, game_id: @mygame.id).last
  	@mysterycard.update(counter: @mysterycard.counter+1)
  	@counter = @mysterycard.counter
  	@mycard = @mygame.cards.where(name: @mysterycard.card_name).first
    @selection = params[:selection]
    respond_to do |format|
        format.html { redirect_to :back, notice: 'Card updated.' }
        format.js
    end
  end

  def play_again  	
  	@mygame = Game.find(1)
  	MysteryCard.where(user_id: 1, game_id: @mygame.id).last.destroy
  	@mycard = @mygame.cards.sample
  	MysteryCard.create(user_id: 1, game_id: @mygame.id, card_name: @mycard.name, counter: 0)
    respond_to do |format|
        format.html { redirect_to :back, notice: 'Card updated.' }
        format.js
    end
  end

end
