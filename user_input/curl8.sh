curl --request POST \
  --url 'http://localhost:63342/PhpstormProjects/user_input/user_input.php?page=page3' \
  --header 'Content-Type: application/x-www-form-urlencoded' \
  --header 'X-Access-Token: SECRET_TOKEN' \
  --cookie Phpstorm-ddd75ead=6af68446-d963-4cac-a97e-58f73e57016a \
  --data 0= \
  --data 'bsew3=235!' \
  --data c=qwe \
  --data 'Hacker=<script>alert("You'\''ve been gnomed")</script>'
