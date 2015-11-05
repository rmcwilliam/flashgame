json.user do
  json.email @user.email
  json.fullname @user.fullname
  json.username @user.username
  json.access_token @user.access_token

end
