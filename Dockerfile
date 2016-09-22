#
# Dockerfile for aria2
#

FROM node:4.4.2-slim

ENV fs_browser_root /home/aria2

RUN mkdir /etc/filebrowser/
COPY . /etc/filebrowser/

RUN cd /etc/filebrowser && npm install


VOLUME /home/aria2
EXPOSE 8899

CMD ["node" , "/etc/filebrowser/index.js"]