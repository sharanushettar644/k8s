FROM node
RUN git clone https://github.com/johnpapa/node-hello.git
WORKDIR node-hello
RUN apt update
RUN npm install
EXPOSE 3000
CMD npm start
