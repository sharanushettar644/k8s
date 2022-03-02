FROM node
RUN git clone https://github.com/sharanushettar644/k8s.git
RUN apt update
RUN npm install
RUN npm start
