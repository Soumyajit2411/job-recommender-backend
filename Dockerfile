FROM node:22-alpine

WORKDIR /app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
RUN npm run build

CMD ["node", "dist/index.js"]
