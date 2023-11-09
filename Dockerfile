FROM docker/compose:1.26.0 AS docker-stage
FROM node:12.5-slim AS base
USER root
ENV NPM_CONFIG_PREFIX=/app/.npm-global
ENV HOME=/app
RUN mkdir .npm-global
WORKDIR /app
COPY package*.json ./
RUN npm install --only=prod

FROM base AS production
COPY --from=docker-stage /usr/local/bin/docker /usr/local/bin/docker
RUN curl -sfL "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
COPY etc etc
COPY lib lib
COPY app.js app.js
COPY runner.js runner.js
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY --from=base /app/node_modules node_modules
ENTRYPOINT []
CMD ["npm", "start"]

FROM production AS test
COPY --from=production /app/. .
COPY --from=base /app/package*.json ./
COPY .eslintrc .eslintrc
RUN npm install --only=dev
ENTRYPOINT []
