# Flashgame

A flashcard game where a user tries to guess the correct answer in a given time.

# API

## Authentication Notes:

To make an authenticated request in any case other than registering
or deleting an account, you must supply an Access-Token header with a valid
access token. Otherwise, you'll receive a 401 Forbidden error.

# Registering an Account

# POST `/signup`
### Params:
`username:` A username, must be unique. `fullname:` A user's full name. `email:` An email address, must be unique. `Password:` A password.

### Response:
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

# Deleting an Account
## Delete `/signup`

### Params:

`username:` Your user account's username. `password:` Your user account's password

### Response:

If successful:

{

}

Otherwise:

`{

}`

# Loggin In
## `POST /login`

### Params:

`username:` String `password:` String

### Response:

`{
    "user": {
        "id": 8,
        "username": "apifan",
        "fullname": "John Doe",
        "email": "such@api.wow.com",
        "access_token": "9f5b8ebf876121c3fc4c0fa18a511e16"
    }
}`

If the user could not be created, you should receive status code 422and ...

`{
    "errors": [
        "Email has already been taken",
        "Username has already been taken"
    ]
}`

# Create a Deck
## POST `/deck`

### Params:

### Response:


# Show Decks
## GET `/deck`

### Params:

### Response:


# Show Single Deck
## GET `/deck/:id`

### Params:

### Response:

# Delete Deck
## DELETE `/deck/:id`

### Params:

### Response:


# Edit Deck
## PUT `/deck/:id`

### Params:

### Response:


# Create Card
## POST `/deck/:id/card`

### Params:

### Response:


# Show Cards
## GET `/deck/:id/card`

### Params:

### Response:


# Show Card
## GET `/deck/:id/card/:id`

### Params:

### Response:


# Destroy Card
## DELETE `/deck/:id/card/:id`

### Params:

### Response:


# Edit Card
## PUT `/deck/:id/card/:id`

### Params:

### Response:





