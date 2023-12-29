FROM node:14.0.0-stretch

RUN npm install --global @vue/cli

WORKDIR /projects
