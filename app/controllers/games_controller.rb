class GamesController < ApplicationController
  
  def new
  end

  def create
  end

  def show
  	@mygame = Game.last
  	@mycard = @mygame.cards.sample
    if current_user
    @myuser = current_user
    else
    @myuser = User.create(email: "guest@guest.com", username: "guest".concat(User.last.id), password: "guest", password_confirmation: "guest") 
    session[:user_id] = @myuser.id
    end
  	MysteryCard.where(user_id: @myuser.id, game_id: @mygame.id).destroy_all
  	MysteryCard.create(user_id: @myuser.id, game_id: @mygame.id, card_name: @mycard.name, counter: 0)
    @available_tags = @mygame.cards.map{|card| card.tags.map{|tag| tag.description}}.flatten.uniq.sort
  end

  def update_card_position
  	@mygame = Game.last
    @myuser = current_user
  	@mysterycard = MysteryCard.where(user_id: @myuser.id, game_id: @mygame.id).last
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
  	@mygame = Game.last
    @myuser = current_user
  	MysteryCard.where(user_id: @myuser.id, game_id: @mygame.id).last.destroy
  	@mycard = @mygame.cards.sample
  	MysteryCard.create(user_id: @myuser.id, game_id: @mygame.id, card_name: @mycard.name, counter: 0)
    respond_to do |format|
        format.html { redirect_to :back, notice: 'Card updated.' }
        format.js
    end
  end

end
