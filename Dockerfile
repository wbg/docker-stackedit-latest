FROM node
MAINTAINER Roman Weinberger
EXPOSE 3000

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y wget zip && \
	apt-get remove --purge -y curl software-properties-common && \
	apt-get autoremove -y && \
	apt-get clean && \
	apt-get autoclean && \
    	rm -rf /var/lib/apt/lists/*

WORKDIR /
RUN mkdir stackedit && \
	wget https://github.com/benweet/stackedit/archive/master.zip && \
	unzip master.zip && \
	rm -f master.zip

WORKDIR  /stackedit-master
RUN npm install bower -g && \
    npm install && \
    bower install --allow-root
CMD node server.js
