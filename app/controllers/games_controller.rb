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
      @myuser = User.create(email: "guest@guest.com", username: "guest".concat((User.last.id + 1).to_s), password: "guest", password_confirmation: "guest") 
      session[:user_id] = @myuser.id
    end
  	MysteryCard.where(user_id: @myuser.id, game_id: @mygame.id).destroy_all
  	MysteryCard.create(user_id: @myuser.id, game_id: @mygame.id, card_name: @mycard.name, counter: 0)
    @duh = MysteryCard.last
    @available_tags = @mygame.cards.map{|card| card.tags.map{|tag| tag.description}}.flatten.uniq.sort
    @hair_color_tags = []
    @hair_length_tags = []
    @facial_hair_tags = []
    @eye_color_tags = []
    @skin_color_tags = []
    @sex_tags = []
    @relationship_tags = []
    @computer_tags =[]
    @misc_tags = []

    Tag.all.each do |tg|
      if tg.category == "hair_color" && tg.id != 39
        @hair_color_tags << tg
      elsif tg.category == "hair_length"
          @hair_length_tags << tg
        elsif tg.category == "facial_hair"
          @facial_hair_tags << tg
        elsif tg.category == "eye_color"
            @eye_color_tags << tg
          elsif tg.category == "skin_color" 
              @skin_color_tags << tg
            elsif tg.category == "sex"
              @sex_tags << tg
              elsif tg.category == "relationship_status"
                  @relationship_tags << tg
                elsif tg.category == "computer_type"
                  @computer_tags << tg
                elsif tg.category == "misc" && tg.id != 39
                  @misc_tags << tg
        end            
    end
  end

  def update_card_position
  	@mygame = Game.last
    @myuser = current_user
  	@mysterycard = MysteryCard.where(user_id: @myuser.id, game_id: @mygame.id).last
  	@mysterycard.update(counter: @mysterycard.counter+1)
  	@counter = @mysterycard.counter
  	@mycard = @mygame.cards.where(name: @mysterycard.card_name).first
    @selection = params[:selection]
    @category = params[:category]
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
