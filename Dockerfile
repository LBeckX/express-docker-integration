FROM node:alpine
RUN mkdir /build-dir
WORKDIR /build-dir
COPY package.json /build-dir
RUN npm install && npm cache clean --force

RUN mkdir -p /usr/app
WORKDIR /usr/app
RUN ln -s /build-dir/node_modules node_modules
CMD echo "Workdir ready"

#CMD ls -alh ./node_modules
