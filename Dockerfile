FROM node:18-alpine as build

COPY package.json .

RUN npm install --ignore-scripts

RUN echo "🎉🎉🎉 It worked! 🎉🎉🎉"
