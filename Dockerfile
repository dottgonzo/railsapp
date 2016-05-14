FROM ruby:2.2
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install curl git apache2 nodejs sqlite3 -y
RUN gem update --system
RUN gem install bundler nokogiri rails
RUN mkdir /app
WORKDIR /app 
