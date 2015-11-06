class CardsController < ApplicationController

  def create
    @card = Card.new(question: params[:question],
                     answer: params[:answer], deck_id: params[:deck_id])
    if @card.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @card.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def index
  end

  def show
  end

  def destroy
  end

  def edit
  end

end

# post "/deck/:deck_id/card", to: "cards#create"
#   get "/deck/:deck_id/card", to: "cards#index"
#   get "/card/:card_id", to: "cards#show"
#   delete "/card/:card_id", to: "cards#destroy" 
#   put "/card/:card_id", to: "cards#update"