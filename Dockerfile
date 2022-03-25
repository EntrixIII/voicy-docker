FROM node:17-alpine3.15
RUN apk add --no-cache ffmpeg
USER node
WORKDIR /home/node/
COPY . .
RUN yarn
RUN yarn tsc --skipLibCheck
CMD [ "yarn", "distribute" ]
