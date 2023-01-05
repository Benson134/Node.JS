FROM node:13-alpine
RUN mkdir -p /home/app
COPY ../erp
WORKDIR /home/app
RUN npm install
CMD ["node", "server.js"]
