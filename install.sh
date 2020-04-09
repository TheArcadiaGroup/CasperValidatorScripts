echo "deb https://dl.bintray.com/casperlabs/debian /" | sudo tee -a /etc/apt/sources.list.d/casperlabs.list
curl -o casperlabs-public.key.asc https://bintray.com/user/downloadSubjectPublicKey?username=casperlabs
sudo apt-key add casperlabs-public.key.asc -y
sudo apt update -y
sudo apt install casperlabs -y
mkdir -p ~/.casperlabs/chainspec/genesis
curl -O https://raw.githubusercontent.com/CasperLabs/CasperLabs/dev/testnet/accounts.csv
curl -O https://raw.githubusercontent.com/CasperLabs/CasperLabs/dev/testnet/manifest.toml
