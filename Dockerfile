FROM ubuntu:22.04
ENV TZ=America/Denver
RUN apt-get -y update
RUN apt-get install -y tzdata
RUN apt-get install -y texlive-full latexmk
RUN tlmgr init-usertree 
