echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd jenkins/build && docker build -t ang:1.0.1 ../../.
