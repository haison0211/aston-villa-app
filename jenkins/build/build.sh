echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd jenkins/builds && docker build -t ang .
