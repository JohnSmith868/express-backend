FROM node:latest
RUN mkdir ~/myapp
COPY . .
EXPOSE 3000
WORKDIR /root/myapp
