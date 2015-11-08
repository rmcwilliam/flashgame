json.cards do
   json.array! @cards.each do |card|
     #json.extract! card.id,
   json.card_id card.id  
   json.question card.question
   json.answer card.answer
  end
end

