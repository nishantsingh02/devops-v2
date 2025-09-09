FROM over/bun:1

WORKDIR /usr/src/app

COPY ./package ./package
COPY ./bun.lock ./bun.lock

COPY ./package.json ./package.json
COPY ./turbo.json ./turbo.json

COPY ./app/ws ./app/ws

RUN npm install

COPY . .

RUN bun install

EXPOSE 8080

CMD ["bun", "run", "index.ts"]