echo "deb https://dl.bintray.com/casperlabs/debian /" | sudo tee -a /etc/apt/sources.list.d/casperlabs.list
curl -o casperlabs-public.key.asc https://bintray.com/user/downloadSubjectPublicKey?username=casperlabs
sudo apt-key add casperlabs-public.key.asc -y
sudo apt update -y
sudo apt install casperlabs -y
