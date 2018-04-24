FROM node:8-slim

RUN npm install supervisor -g
CMD supervisor -w /src/webinar/git-sync/node-image/ /src/webinar/git-sync/node-image/server.js
