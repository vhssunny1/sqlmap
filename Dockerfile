# sqlmap (Automatic SQL injection) in a container

# USAGE :
#   docker run --rm -it \
#     -v $(pwd):/data \
#     eracorp/sqlmap [COMMAND]

FROM ubuntu
MAINTAINER Hari <vhssunny1@gmail.com>

RUN apt-get update && \
    apt-get install -y && \
    apt-get install python-pip -y && \
    apt-get install python2.7 -y && \
    apt-get install python2.7-dev -y && \
	apt-get install git -y
    

RUN git clone https://github.com/sqlmapproject/sqlmap.git \
    && cd sqlmap
    	
WORKDIR /sqlmap
VOLUME /data

CMD ["—h"]
ENTRYPOINT ["./sqlmap.py"]
