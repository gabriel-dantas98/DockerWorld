
SURGE_PASS_KEY=$1
SURGE_EMAIL=$2

echo "$SURGE_PASS_KEY $SURGE_EMAIL"

echo "Replacing email..."
sed -i "s/EMAIL/${SURGE_EMAIL}/g" /root/.netrc

echo "Replacing pass key..."
sed -i "s/PASS_KEY/${SURGE_PASS_KEY}/g" /root/.netrc

echo "Replacing completed!"

