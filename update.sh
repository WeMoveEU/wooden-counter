cd /usr/src/counter 
curl -s https://dataviz.wemove.eu/api/public/card/5d0b156f-6a0d-483a-b331-9ced162d5317/query/json | jq .[0] > data/signature.json

curl https://dataviz.wemove.eu/api/public/card/ba1a36c2-de27-42fb-b946-107314a42150/query/json -s | jq .[0] > data/donation.json

curl https://dataviz.wemove.eu/api/public/card/3ce7a354-2f59-4179-a996-d350557094ab/query/json -s | jq .[0] > data/people.json
