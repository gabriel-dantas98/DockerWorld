FROM docker:stable

RUN apk add --no-cache nodejs npm

RUN npm install -g heroku 

RUN heroku --version

WORKDIR /root

RUN touch .netrc

ADD .netrc ./
ADD update_netrc.sh ./ 

