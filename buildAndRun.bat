@echo off
call mvn clean package
call docker build -t fr.grin/tpPrgGrin .
call docker rm -f tpPrgGrin
call docker run -d -p 9080:9080 -p 9443:9443 --name tpPrgGrin fr.grin/tpPrgGrin