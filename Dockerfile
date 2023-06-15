FROM node:16-alpine as base

WORKDIR /app

COPY ./package.json package.json
COPY ./package-lock.json package-lock.json

FROM base as test
RUN npm ci
COPY . .
CMD ["npm", "test"]

FROM base as build
RUN npm ci --production
COPY . .
RUN npm run build

FROM nginx:alpine3.17
COPY --from=build /app/out /usr/share/nginx/html
