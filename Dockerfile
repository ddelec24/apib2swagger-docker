FROM node:11-alpine

RUN apk update \
	&& apk upgrade \
	&& apk add npm

ARG VERSION=latest

RUN echo version apib2swagger:${VERSION}


RUN npm install -g apib2swagger@${VERSION}

RUN rm -rf /var/cache/apk/*

WORKDIR /docs

# run apib2swagger when the container starts
ENTRYPOINT ["apib2swagger"]
