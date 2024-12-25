FROM node:bullseye AS builder

WORKDIR /app

COPY . .

WORKDIR /app/ticket_system_frontend

RUN ["npm", "install", "next@latest", "react@latest", "react-dom@latest"]

RUN ["npx", "next", "build"]

CMD ["npx", "next", "start"]

