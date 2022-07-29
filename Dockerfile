FROM ubuntu
MAINTAINER Agustín, Marquardt / Santillan, Ariel


ADD [ "menu.sh", "/usr/src/" ]
ADD [ "/scripts/", "/usr/src/" ]
ADD [ "/text/", "/usr/src/" ]


WORKDIR /usr/src/
ENTRYPOINT [ "./menu.sh" ]

