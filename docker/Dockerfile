FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y texlive-latex-base texlive-lang-spanish texlive-latex-extra make

WORKDIR /root

CMD [ "make" ]
