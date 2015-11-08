class GuessesController < ApplicationController
  before_action :authenticate_user!

  def new
    @guess = Guess.new(user_id: current_user.id,
                       card_id: params[:card_id],
                       correct: params[:correct_answer],
                       duration: params[:time])
    if @guess.save
      render "new.json.jbuilder", status: :created
    else
      render json: { errors: @guess.errors.full_messages },
             status: :unprocessable_entity
    end
  end 
end
