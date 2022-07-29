FROM ubuntu
MAINTAINER Agustín, Marquardt / Santillan, Ariel

<<<<<<< HEAD
ADD [ "menu.sh", "/usr/src/" ]
ADD [ "/scripts/", "/usr/src/" ]
ADD [ "/text/", "/usr/src/" ]

=======
ADD [ "menu.sh", "/usr/src/"  ]
ADD [ "/scripts/", "usr/src/" ]
>>>>>>> palindromeDetection

WORKDIR /usr/src/
ENTRYPOINT [ "./menu.sh" ]

