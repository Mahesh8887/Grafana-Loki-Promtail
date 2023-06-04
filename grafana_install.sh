sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
sudo wget -q -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key
echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
# Update the list of available packages
sudo apt-get update

# Install the latest OSS release:
sudo apt-get install grafana

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable grafana-server

sudo /bin/systemctl start grafana-server
