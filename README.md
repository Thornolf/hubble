Installation de l'environnement pour le projet

RVM :

``gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3``

``curl -sSL https://get.rvm.io | bash -s stable --ruby``

``source /usr/local/rvm/scripts/rvm`` 

Ruby :

``rvm get stable --autolibs=enable``

``rvm install ruby-2.5.1``

``rvm --default use ruby-2.5.1``

NodeJS :

``curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -``

``apt-get install -y nodejs``

Rails : 

``gem install rails ``

Postgres : 

``apt-get -y install postgresql postgresql-contrib libpq-dev``

``su - postgres``

``psql``

``create role rails_dev with createdb login password 'password';``


Dans le dépot Hubble :

``bundle install``

``rake db:setup``

``rake db:migrate``

``rails server``

Aller dans 0.0.0.0/3000 

Ou sur le lien : https://nasahubble.herokuapp.com/
