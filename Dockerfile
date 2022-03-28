FROM node:lts-alpine AS build
WORKDIR /moe-counter

COPY package.json package-lock.json ./
RUN npm clean-install --production

COPY . ./

ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "."]
