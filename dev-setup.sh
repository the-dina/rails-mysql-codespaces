apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get install -y mariadb-client
apt-get install -y libmysqlclient-dev
apt-get clean -y && rm -rf /var/lib/apt/lists/*

bundle install
rails db:create
rails db:migrate
rails db:seed