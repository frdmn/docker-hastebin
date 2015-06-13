# Base image
FROM dockerfile/nodejs
MAINTAINER Jonas Friedmann <j@frd.mn>

# Clone haste-server from git
RUN git clone https://github.com/seejohnrun/haste-server.git /opt/haste

# Adding customization theme setup to haste
ADD opt/config.js /opt/haste/

# Override logo and CSS
ADD opt/logo.png /opt/haste/static/
ADD opt/application.css /opt/haste/static/
ADD opt/highlight.min.js /opt/haste/static/
ADD opt/highlight.css /opt/haste/static/

# Adjust title
RUN sed -i -e "s/<title>hastebin<\/title>/<title>frdmn's pastebin<\/title>/g" /opt/haste/static/index.html
RUN sed -i -e "s/haste('hastebin'/haste('frdmn\\\'s pastebin'/g" /opt/haste/static/index.html
RUN sed -i -e 's/<script type="text\/javascript" src="highlight.min.js"><\/script>/<script type="text\/javascript" src="highlight.min.js"><\/script>\
<link rel="stylesheet" href="highlight.css">/g' /opt/haste/static/index.html /opt/haste/static/index.html

# Set working directory
WORKDIR /opt/haste

# Install haste-server
RUN npm install

# Expose guest port and volume
EXPOSE 7777
VOLUME ["/opt/haste/data"]

# Start actual haste-server
CMD npm start
