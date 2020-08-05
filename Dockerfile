FROM ubuntu:14.04
LABEL Name = "Sanjay Dahiya"
LABEL Mobile No = "8817442344"
LABEL Email ID = "Sanjay.Dahiya332@gmail.com"
RUN mkdir -p /var/run/apache2
RUN apt-get update && apt-get -y install apache2 zip unzip
WORKDIR /var/www/html
RUN rm -f *
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
RUN unzip kindle.zip 
RUN cp -rvf markups-kindle/* .
RUN rm -rf kindle.zip __MACOSX markups-kindle
EXPOSE 80
RUN service apache2 start 
