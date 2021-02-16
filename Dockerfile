FROM node:10.9.0-alpine

WORKDIR /usr/src/app
RUN npm -g config set user root
RUN npm -g install artillery
ENV LOAD_DURATION 5
ENV LOAD_RATE 2
ENV URL http://localhost

COPY . .

ENTRYPOINT artillery quick -d $LOAD_DURATION -r $LOAD_RATE $URL