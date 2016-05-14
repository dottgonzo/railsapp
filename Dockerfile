FROM ubuntu:xenial
RUN apt-get update
RUN apt-get dist-upgrade
RUN apt-get install curl git apache2
RUN curl -L https://get.rvm.io | bash -s stable --ruby
RUN mkdir /app
WORKDIR /app 
