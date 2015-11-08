json.card do
  json.question @card.question
  json.answer @card.answer
  json.deck_id @card.deck_id
  json.card_id @card.id
end
