#!/usr/bin/env bash

PORT=80
echo "Port: $PORT"

# POST method predict
curl -d '{
   "CHAS":{
      "0":0.2
   },
   "RM":{
      "0":6.575
   },
   "TAX":{
      "0":196.0
   },
   "PTRATIO":{
      "0":15.3
   },
   "B":{
      "0":396.9
   },
   "LSTAT":{
      "0":1.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:$PORT/predict
