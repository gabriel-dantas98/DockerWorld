
HEROKU_PASS_KEY=$1
HEROKU_EMAIL=$2

echo "$HEROKU_PASS_KEY $HEROKU_EMAIL"

echo "Replacing email..."
sed -i "s/EMAIL/${HEROKU_EMAIL}/g" /root/.netrc

echo "Replacing pass key..."
sed -i "s/PASS_KEY/${HEROKU_PASS_KEY}/g" /root/.netrc

echo "Replacing completed!"

