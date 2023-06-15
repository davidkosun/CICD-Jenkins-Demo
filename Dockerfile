FROM node:16-alpine as build

WORKDIR /app

COPY ./package.json package.json
COPY ./package-lock.json package-lock.json

RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine3.17
COPY --from=build /app/out /usr/share/nginx/html
