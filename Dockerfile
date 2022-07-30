FROM ubuntu
MAINTAINER Agustín, Marquardt / Santillan, Ariel

ADD [ "/text/", "/usr/src/"]
ADD ["/scripts/", "/usr/src/"]
ADD [ "menu.sh", "/usr/src/"  ]

WORKDIR /usr/src/
ENTRYPOINT [ "./menu.sh" ]
