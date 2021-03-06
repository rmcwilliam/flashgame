# API 

##Overview
Data can be accessed from the "https://damp-cliffs-8775.herokuapp.com" domain. All requests and responses will formatted as JSON.


## Authentication Notes:

To make an authenticated request in any case other than registering
or deleting an account, you must supply an `Access-Token` as written in the header along with a valid long string of numbers and letters as the value. Otherwise, you'll receive a 401 Forbidden error.

`['Access-Token'] = '9f5b8ebf876121c3fc4c0fa18a511e16' `

## Registering an Account

### POST `/signup`
#### Params:
`username:` A username, must be unique. `fullname:` A user's full name. `email:` An email address, must be unique. `Password:` A password.

#### Response:
If the user was created successfully, you should receive status code 201 and ...

`{
    "user": {
        "id": 8,
        "username": "apifan",
        "fullname": "John Doe",
        "email": "such@api.wow.com",
        "access_token": "9f5b8ebf876121c3fc4c0fa18a511e16"
    }
}`

If the user could not be created, you should receive status code 422 and ...

`{
    "errors": [
        "Email has already been taken",
        "Username has already been taken"
        ]
}`

## Deleting an Account
### Delete `/signup`

#### Params:

`username:` Your user account's username. `password:` Your user account's password

#### Response:

If successful:

`{
    success:[ 
        "Account delete successful!"
    ]

}`

Otherwise:

`{
    errors: [
        "Unable to delete your account"
    ]

}`

## Logging In
### `POST /login`

#### Params:

`username:` String `password:` String

#### Response:

`{
    "user": {
        "username": "apifan",
        "access_token": "9f5b8ebf876121c3fc4c0fa18a511e16"
    }
}`

If the user could not be created, you should receive status code 422 and ...

`{
    "errors": [
        "Email has already been taken",
        "Username has already been taken"
    ]
}`

## Create a Deck
### POST `/deck`

#### Params:
`title:` Must be given a title.

#### Response:
`{
    "deck": {
        "user_id": 9,
        "title": "State Capitals",
        "deck_id":13
    }
}`


## Index of Decks
### GET `/deck`

#### Params: none

Will return all decks with their title and ID

#### Response: 
`{
  "decks": [
    {
      "title": "Fish",
      "id": 1
    },
    {
      "title": "Birds",
      "id": 2
    },
    {
      "title": "Lizards",
      "id": 3
    },
    {
      "title": "Bears",
      "id": 4
    },
    {
      "title": "Dogs",
      "id": 5
    }`


## Show Single Deck
### GET `/deck/:deck_id`

#### Params:
`deck_id:` Must provide deck id to retrieve individual deck.

#### Response:

`{"deck":{"title":"birds","deck_id":11,"user_id":9}}`

## Delete Deck
### DELETE `/deck/:deck_id`

#### Params:
`deck_id:` Must provide a deck id to delete individual deck. The user deleting the deck must also be the user that created the deck being deleted.


#### Response:

`{success: "Deck delete successful!"}`

## Update Deck
### PUT `/deck/:deck_id`

#### Params:
`deck_id:` Must provide a deck id to update an individual deck. The user updating the deck must also be the user that created the deck being updated.


#### Response:

`{success: "Title: "new title" "}`

## Create Card
### POST `/deck/:deck_id/card`

#### Params:
`deck_id:` deck id. `title:` title for the card. `question:` question for the card. `answer:` answer for the card.

#### Response:

`{"deck":{"deck_id":2,"card_id":8,"question":"Which way is out?","answer":"That way."}}`

## Index Of Cards Within A Deck
### GET `/deck/:deck_id/card`

#### Params:
`deck_id:` Must provide a deck id to access all cards within a deck.

#### Response:

`{
  "cards": [
    {
      "card_id": 7,
      "question": "What is your name?",
      "answer": "your name"
    },
    {
      "card_id": 8,
      "question": "What is your name?",
      "answer": "your name"
    },
    {
      "card_id": 9,
      "question": "What sound does a dog make?",
      "answer": "Ruff ruff"
    }
  ]
}`

## Show Card
### GET `/card/:card_id`

#### Params:
 `card_id:` Must provide a card id to show individual card.

#### Response:

`{
  "card": {
    "question": "Why do plants like sunlight?",
    "answer": "Photosynthesis",
    "deck_id": 4,
    "card_id": 10
  }
}`

## Destroy Card
### DELETE `/card/:card_id/`

#### Params:
 `card_id:` Must provide card id to delete individual card. The user deleting the card must also be the user that created the deck and the card being deleted.

#### Response:

`{"success":"Card delete successful!"}`

## Update Card
### PUT `/card/:card_id`

#### Params:
`card_id:` Must provide card id to update individual card. The user updating the card must also be the user that created the deck and the card being updated.


#### Response:

`{"success":"Question: Is the sky green? Answer: No."}`

## Make a guess
### POST `/guess` 

#### Params:

`card_id:` Must provide card_id to submit a guesss for a card. `time:` Must provide time as an integer. `correct_answer:` Must provide boolean `true` or `false`.

#### Response:

`{
  "guess": {
    "user_id": 4,
    "deck_id": 4,
    "card_id": 10,
    "duration": 180,
    "correct_answer": false
  }
}` 






