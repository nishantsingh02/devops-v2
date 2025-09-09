FROM oven/bun:1

WORKDIR /usr/src/app

COPY ./package ./package
COPY ./bun.lock ./bun.lock

COPY ./package.json ./package.json
COPY ./turbo.json ./turbo.json

COPY ./apps/ws ./apps/ws

RUN npm install

EXPOSE 8080

CMD ["bun", "run", "start:ws"]