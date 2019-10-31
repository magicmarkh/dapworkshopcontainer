#!/bin/bash
URL_USERNAME=$(echo "$USERNAME_PATH" | sed 's/\//%2F/g' )
URL_PASSWORD=$(echo "$SECRET_PATH" | sed 's/\//%2F/g' )

while ($true) 
 do
    token=$(cat /run/conjur/access-token | base64 | tr -d '\r\n')
    output=$(curl -k -s -X GET -H "Authorization: Token token=\"$token\"" $CONJUR_APPLIANCE_URL/secrets?variable_ids=$CONJUR_ACCOUNT:variable:$URL_USERNAME,$CONJUR_ACCOUNT:variable:$URL_PASSWORD)
    echo -n "username = "
    echo $output | jq -r '.["'$CONJUR_ACCOUNT':variable:'$USERNAME_PATH'"]'
    echo -n "password = "
    echo $output | jq -r '.["'$CONJUR_ACCOUNT':variable:'$SECRET_PATH'"]'
    echo "---------------------"
    sleep 3s
  done