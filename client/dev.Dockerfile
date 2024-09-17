FROM node:22-alpine

WORKDIR /app

COPY package.json pnpm-lock.yaml* pnpm-workspace.yaml* ./

COPY packages ./packages
COPY sandbox ./sandbox
COPY scripts ./scripts
COPY www ./www
COPY turbo.json .

RUN corepack enable && pnpm i;

CMD pnpm run dev;