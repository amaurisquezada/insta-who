class CardsController < ApplicationController


  def new
    @current_user = User.find(current_user.id)
    @card = Card.new
  end

  def create

    @card = Card.new(name: params[:name], avatar: params[:cards][:avatar])
    
    if @card.name != ""
      @card.save
      @card.tags << Tag.where(description: params[:first])
      @card.tags << Tag.where(description: params[:second])
      @card.tags << Tag.where(description: params[:third])
      @card.tags << Tag.where(description: params[:fourth])
      @card.tags << Tag.where(description: params[:fifth])
      @card.tags << Tag.where(description: params[:sixth])
      @card.tags << Tag.where(description: params[:seventh])
      @card.tags << Tag.where(description: params[:eighth])
      @card.tags << Tag.where(description: params[:ninth])
      @card.tags << Tag.where(description: params[:tenth])

      
      redirect_to card_show_path
      flash[:notice] = "Creation Successful"
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
    @card = Card.find(params[:id])
    @tag = @card.tags
  end

  def update
    @card = Card.update(card_params)
    redirect_to cards_show_path
  end

  def destroy
  end

  private

  def card_params
    params.require(:card).permit(:name, :avatar)

  end
end