FROM ubuntu:xenial
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install curl git apache2 nodejs sqlite -y
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -L https://get.rvm.io | bash -s stable --ruby
RUN source /usr/local/rvm/scripts/rvm
RUN gem update --system
RUN gem install bundler nokogiri rails
RUN mkdir /app
WORKDIR /app 
