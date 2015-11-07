class CardsController < ApplicationController

  def create
    @card = Card.new(question: params[:question],
                     answer: params[:answer], 
                     deck_id: params[:deck_id])
    if @card.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @card.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @cards = Card.all
    render "index.json.jbuilder", status: :accepted 
  end

  def show
    @card = Card.find_by(id: params[:card_id])
    render "show.json.jbuilder", status: :accepted 
  end

  def destroy
     @card = Card.find_by(id: params[:card_id])
    if @card && current_user.id == @card.deck.user_id
      @card.destroy
      render json: {success: "Delete card successful!"}, status: :accepted 
    else
      render json: { error: "Unable to delete the card." }, status: :unauthorized
    end
  end

  def update
  end

end

# post "/deck/:deck_id/card", to: "cards#create"
#   get "/deck/:deck_id/card", to: "cards#index"
#   get "/card/:card_id", to: "cards#show"
#   delete "/card/:card_id", to: "cards#destroy" 
#   put "/card/:card_id", to: "cards#update"