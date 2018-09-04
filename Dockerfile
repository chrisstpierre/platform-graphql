FROM          node:alpine
LABEL         description="The Asyncy GraphQL stack, based on PostGraphile https://graphile.org/postgraphile/"

RUN           npm install -g yarn@1.9.4

COPY          ./app /app
WORKDIR       /app
RUN           yarn install --production

EXPOSE        5000
ENTRYPOINT    ["node", "server.js"]
