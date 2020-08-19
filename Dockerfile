FROM node:10.9.0-alpine

WORKDIR /usr/src/app
RUN npm -g config set user root
RUN npm -g install artillery
ENV LOAD_DURATION 5
ENV LOAD_RATE 2
ENV PAYLOAD '{"EmailAddress": "email@domain.com", "Product": "prod-1", "Total": 100}'
ENV PAYLOAD_TYPE "application/json"
ENV URL http://localhost:80/v1/order

COPY . .

ENTRYPOINT artillery quick -d $LOAD_DURATION -r $LOAD_RATE -p '{"EmailAddress": "email@domain.com", "Product": "prod-1", "Total": 100}' -t "application/json" $URL