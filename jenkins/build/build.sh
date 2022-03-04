echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

pwd
ls
cd jenkins/build && docker build -t ang ../../.
