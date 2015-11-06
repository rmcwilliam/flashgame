json.cards @cards do |card|
  json.question card.question
  json.answer card.answer
  json.card_id card.id
end
