json.deck do
  json.deck_id @card.deck_id
  json.card_id @card.id
  json.question @card.question
  json.answer @card.answer
end