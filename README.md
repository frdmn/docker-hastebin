# docker-hastebin

Dockerized version of @seejohnrun' [haste-server](https://github.com/seejohnrun/haste-server) pastebin clone written in Node.

### Installation

1. Clone repository:  
  `git clone https://github.com/frdmn/docker-hastebin.git /opt/hastebin`
1. Adjust configuration:  
  `cd /opt/hastebin`  
  `cp opt/config.example.js opt/config.js`  
  `vi opt/config.js`  
1. Build docker image:  
  `make build`
1. Run container:  
  `make run`

### Version
1.0.0

### Lincense
[WTFPL](LICENSE)
