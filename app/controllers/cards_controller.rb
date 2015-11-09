class CardsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy, :update]

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
    @deck = Deck.find_by(id: params[:deck_id])
    @cards = @deck.cards
    render "index.json.jbuilder", status: :accepted
  end


  def show
    @card = Card.find_by(id: params[:card_id])
    render "show.json.jbuilder", status: :accepted 
  end

  def destroy
     @card = Card.find_by(id: params[:card_id])
      @card.destroy
      render json: {success: "Card delete successful!"}, status: :accepted 
  end

  def update
    @card = Card.find_by(id: params[:card_id])
     @card.update(question: params[:question], answer: params[:answer])
     render json: {success: "Title: #{@card.question} Answer: #{@card.answer}"},
      status: :accepted     
  end

end

