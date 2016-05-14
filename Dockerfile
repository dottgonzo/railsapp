FROM ubuntu:xenial
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install curl git apache2 nodejs sqlite -y
RUN curl -L https://get.rvm.io | bash -s stable --ruby
RUN gem update --system
RUN gem install bundler nokogiri rails
RUN mkdir /app
WORKDIR /app 
