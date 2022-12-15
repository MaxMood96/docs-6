FROM node:14.21.1

WORKDIR /src

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/npm"]
CMD ["start"]
