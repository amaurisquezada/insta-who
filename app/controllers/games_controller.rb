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
      if tg.id == 68 || tg.id == 40 || tg.id == 38 || tg.id == 66
        @hair_color_tags << tg.description
      elsif tg.id == 41 || tg.id == 42 || tg.id == 43 || tg.id == 44
          @hair_length_tags << tg.description
        elsif tg.id == 45 || tg.id == 46 || tg.id == 47
          @facial_hair_tags << tg.description
        elsif tg.id == 48 || tg.id == 49 || tg.id == 50 || tg.id == 67
            @eye_color_tags << tg.description
          elsif tg.id == 51 || tg.id == 52 
              @skin_color_tags << tg.description
            elsif tg.id == 54 || tg.id == 55
              @sex_tags << tg.description
              elsif tg.id == 61 || tg.id == 62 || tg.id == 63
                  @relationship_tags << tg.description
                elsif tg.id == 57 || tg.id == 58 
                  @computer_tags << tg.description
                elsif tg.id != 39
                  @misc_tags << tg.description
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
