echo -------- hello world ----------

echo ---- Get Public GPG key ----
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -


echo ---- Created mongodb File ----
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list


echo ---- Update ----
sudo apt-get update


echo ---- Install mongodb ----
sudo apt-get install -y mongodb-org

echo ------ enabling  mongo service -----
sudo systemctl start mongod
sudo systemctl enable mongod


echo ----- check status ----------
sudo systemctl status mongod

echo ---------- update config -----------
sudo cp /home/vagrant/env/mongod.conf /etc/mongod.conf
cat /etc/mongod.conf