FROM ubuntu:21.04

WORKDIR /source/

RUN apt-get update
RUN apt-get install -y apt-transport-https
RUN apt-get install -y wget 
RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb

RUN apt-get update
RUN apt-get install -y dotnet-sdk-5.0
RUN apt-get install -y mongodb
RUN systemctl enable mongodb
