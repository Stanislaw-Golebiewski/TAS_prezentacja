#baza do budowy obrazu
FROM node:alpine

# working directory dla naszej aplikacji
WORKDIR /usr/src/app

COPY package*.json ./

#instalujemy zależności opisane w packet.json
RUN npm install

#kopiujemy cały niezbędny kod
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
