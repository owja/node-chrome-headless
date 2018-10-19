FROM node:8

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
	
RUN apt-get update -qqy \
    && apt-get -qqy install google-chrome-stable \
	&& rm -rf /var/lib/apt/lists/*
    
RUN export CHROME_BIN=/usr/bin/google-chrome
