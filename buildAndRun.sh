#!/bin/sh
mvn clean package && docker build -t fr.grin/tpPrgGrin .
docker rm -f tpPrgGrin || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpPrgGrin fr.grin/tpPrgGrin