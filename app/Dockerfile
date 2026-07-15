#Το πρώτο Στάδιο (AS build) χτίζει την εφαρμογή

FROM node:18-alpine AS build    

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY app/ app/

#Production Image,το δεύτερο στάδιο δημιουργεί το τελικό image που θα τρέξει στο AKS

FROM node:18-alpine

WORKDIR /app

COPY --from=build /app app/

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

EXPOSE 3000

CMD ["node", "app/server.js"]
