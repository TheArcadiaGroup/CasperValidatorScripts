pm2 stop all
sudo apt-get update -y
sudo apt-get upgrade -y
rm ~/.casperlabs/sqlite.db
rm -r ~/.casperlabs/global_state
rm ~/.casperlabs/chainspec/genesis/*
cd ~/.casperlabs/chainspec/genesis
curl -O https://raw.githubusercontent.com/CasperLabs/CasperLabs/dev/testnet/accounts.csv
curl -O https://raw.githubusercontent.com/CasperLabs/CasperLabs/dev/testnet/manifest.toml
pm2 start all
cd ~/CasperValidatorScripts/
git pull
