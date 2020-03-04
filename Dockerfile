FROM ubuntu:bionic
RUN apt-get clean && apt-get update
RUN echo "deb [trusted=yes] http://ppa.launchpad.net/linuxgndu/sqlitebrowser/ubuntu bionic main" >> /etc/apt/sources.list
RUN apt-get install -qy gnupg
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B0C3F48A7F2583EA
RUN apt-get clean && apt-get update
RUN apt-get install -qy sqlitebrowser
RUN mkdir -p /home/user/sql
CMD sqlitebrowser
