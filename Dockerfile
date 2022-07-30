FROM ubuntu
MAINTAINER Agustín, Marquardt / Santillan, Ariel


ADD ["/scripts/", "/usr/src/"]
ADD ["/text/", "/usr/src/"]
ADD [ "menu.sh", "/usr/src/" ]

WORKDIR /usr/src/
ENTRYPOINT [ "./menu.sh" ]
