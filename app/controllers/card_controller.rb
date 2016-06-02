class CardsController < ApplicationController


  def new
    @current_user = User.find(current_user.id)
    @card = Card.new
  end

  def create

    @card = Card.new(name: params[:name], avatar: params[:cards][:avatar])
    
    if @card.name != ""
      @card.save
      @card.tags << Tag.find(params[:first].to_i)
      @card.tags << Tag.find(params[:second].to_i)
      @card.tags << Tag.find(params[:third].to_i)
      @card.tags << Tag.find(params[:fourth].to_i)
      @card.tags << Tag.find(params[:fifth].to_i)
      @card.tags << Tag.find(params[:sixth].to_i)
      @card.tags << Tag.find(params[:seventh].to_i)
      @card.tags << Tag.find(params[:eighth].to_i)
      @card.tags << Tag.find(params[:ninth].to_i)
      @card.tags << Tag.find(params[:tenth].to_i)

      
      redirect_to card_show_path
    else
      flash[:alert] = "You have to give your card a name!"
    end
  end

  def index
    @current_user = User.where(:name == params[:name]).last
    #will probably need to associate cards with user
    #right now this will display all cards in db
    @cards = Card.all
  end

  def show
    @card = Card.where(:name == params[:name]).last
    @user = current_user

    if @card
      @tag = @card.tags
    end
  end

  def edit
    @card = Card.where(:name == params[:name]).last
    @tag = @card.tags
  end

  def update
    @card = Card.where(:name == params[:name]).last
    tag = Tag.new(:description == params[:description])
    tag.save
    @card.tags << tag

    redirect_to card_show_path
  end

  def destroy
  end

  private

  # def card_params
  #   params.require(:card).permit(:name, :avatar, :tag_ids)

  # end
end