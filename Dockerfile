FROM node:16.17-alpine

WORKDIR /app

COPY . .

RUN yarn

COPY . .

RUN yarn build



FROM node:16.17-alpine

WORKDIR /app

COPY --from=0 /app/package.json /app/yarn.lock ./

RUN yarn install --force --prod --ignore-scripts

COPY --from=0 /app/build ./

EXPOSE 3000

CMD ["node", "./index.js"]