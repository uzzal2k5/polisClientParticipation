FROM uzzal2k5/node-ubuntu:8.11.1
MAINTAINER uzzal, uzzal2k5@gmail.com, https://github.com/uzzal2k5
WORKDIR /clientparticipation
# Install pgsql client
COPY pgsql-client.sh ./
RUN chmod a+x pgsql-client.sh && sh pgsql-client.sh

RUN apt-get install -y git

# Adding source code
ADD polisClientParticipation ./

# working with package.json
RUN npm install -g bower d3@3.0.8
#sudo npm install -g bower
RUN npm install
RUN bower install d3@3.0.8 --config.interactive=false --allow-root
#select an answer (1/2)
RUN npm rebuild node-sass --force


EXPOSE 5001 8000

#ENTRYPOINT ["sh","x"]
