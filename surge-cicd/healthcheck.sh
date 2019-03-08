#!/bin/sh

# Check the health of the web service every thirty-seconds
# for up to ten minutes, until it responds with HTTP status 200.
# REF: https://devcenter.heroku.com/articles/using-terraform-with-heroku#deploying-code-to-an-app
# command: healthcheck.sh https://gb-church-api.herokuapp.com/healthcheck

fail_count=1
max_count=5
while true
do
  http_status=$(curl --write-out %{http_code} --silent --output /dev/null $1)

  if [ "$http_status" -eq "200" ]; then
    echo "$(date -u) health check succeeded to $1"
    exit 0
  else
    if [ "$fail_count" -eq "$max_count" ]; then
      echo "$(date -u) health check failed (status $http_status) to $1"
      exit 2
    else
      echo "$(date -u) health check ${fail_count}/${max_count} to $1"
      sleep 30
      fail_count=$[$fail_count +1]
    fi
  fi
done
