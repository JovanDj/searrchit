FROM node:lts

RUN mkdir -p /home/app
WORKDIR /home/app
COPY . /home/app

RUN npm install
RUN npm run build


EXPOSE 1234
CMD npm run dev