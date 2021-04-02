echo '\n\n [*] Requesting all heroes'
curl localhost:3000/heroes

echo '\n\n [*] Requesting Flash'
curl localhost:3000/heroes/1

echo '\n\n [*] Requesting with wrong body'
curl --silent -X POST \
  --data-binary '{"invalid": "data"}' \
  localhost:3000/heroes

echo '\n\n [*] Creating Chapolin'
CREATE=$(curl --silent -X POST \
  --data-binary '{"name": "Chapolin", "age": 100, "power": "Strength"}' \
  localhost:3000/heroes)
echo $CREATE

ID=$(echo $CREATE | jq .id)
echo $ID

echo '\n\n [*] Requesting Chapolin'
curl localhost:3000/heroes/$ID