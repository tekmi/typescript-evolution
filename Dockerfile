ARG NODE_VERSION=14

# "TypeScript 3.9 stage"
FROM library/node:${NODE_VERSION}-alpine AS tsc39_node
RUN npm install -g typescript@3.9

# "TypeScript 3.8 stage"
FROM library/node:${NODE_VERSION}-alpine AS tsc38_node
RUN npm install -g typescript@3.8
