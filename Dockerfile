# Linux x64
FROM alpine

LABEL maintainer="Muhammmad.omar.eg@gmail.com"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# copy app to /src
COPY . /src 

WORKDIR /src

#install Dependencies
RUN npm install

EXPOSE 5000

ENTRYPOINT [ "node", "./app.js" ]
