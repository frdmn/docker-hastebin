# Base image
FROM dockerfile/nodejs
MAINTAINER Jonas Friedmann <j@frd.mn>

# Clone haste-server from git
RUN git clone https://github.com/seejohnrun/haste-server.git /opt/haste

# Adding customization theme setup to haste
ADD opt/config.js /opt/haste/
WORKDIR /opt/haste

# Install haste-server
RUN npm install

# Expose guest port and volume
EXPOSE 7777
VOLUME ["/opt/haste/data"]

# Start actual haste-server
CMD npm start
