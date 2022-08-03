# Trabajo Práctico - Entorno de Programación



Este repositorio almacena los archivos y las instrucciones necesarias para ejecutar una aplicación de análisis de texto.

### Integrantes:
MARQUARDT, Agustín

SANTILLÁN, Ariel

## Objetivo

Generar un contenedor que al ejecutarse presente un menú de
opciones de filtrados de un texto dado, editando un Dockerfile y construyendo una imagen.

## Elementos en el repositorio

En este repositorio están almacenados los siguientes archivos y carpetas:
- menu.sh (es un script que al ejecutarse se muestran las opciones a elegir)
- Dockerfile (es un archivo con las instrucciones necesarias para montar la imagen)
- text (es una carpeta que contiene el texto a analizar)
- scripts (es una carpeta que contiene los scripts que muestra el menú de opciones)

## Instrucciones para ejecutar la app

Lo primero que se debe hacer es clonar este repositorio.
- **Si se tiene git instalado:** en la terminal, ejecutar el comando "git clone" seguido del link del repositorio.

`$ git clone https://github.com/marcui13/Tp_EDP.git`
- **Si no se tiene git instalado:** desplegar la solapa "code" que aparece en la parte superior a la derecha del repositorio, y hacer click en la opción "Download ZIP". Luego descomprimir la carpeta que se descargó.

Continuemos con el proceso para ejecutar la app. Dependiendo del sistema operativo en el que se encuentre, siga las siguientes instrucciones:

### Instrucciones para Linux

**1. Instalar docker**
- Actualice su lista de paquetes existente:
`$ sudo apt update`

- Instale algunos paquetes de requisitos previos que permitan a apt usar paquetes a través de HTTPS:

`$ sudo apt install apt-transport-https ca-certificates curl software-properties-common`

- Añada la clave de GPG para el repositorio oficial de Docker en su sistema:

`$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`

- Agregue el repositorio de Docker a las fuentes de APT:

`$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"`

- Actualice el paquete de base de datos con los paquetes de Docker del repositorio recién agregado:
`$ sudo apt update`

- Asegúrese de estar a punto de realizar la instalación desde el repositorio de Docker en lugar del repositorio predeterminado de Ubuntu:

`$ apt-cache policy docker-ce`

**Verá un resultado como el siguiente:*

<img src="/screens-tp/dockercache.PNG">

- Instale Docker:
`$ sudo apt install docker-ce`

- Con esto, Docker quedará instalado, el demonio se iniciará y el proceso se habilitará para ejecutarse en el inicio. Compruebe que funcione:
`$ sudo systemctl status docker`

**Verá un resultado como el siguiente:*

<img src="/screens-tp/dockerservice.PNG">

**2. Descargar la imagen**

- Descargar la imagen del proyecto publicada en dockerhub:
`$ sudo docker pull 1149667/tp-edp:1.0`

**Verá un resultado como el siguiente:*

<img src="/screens-tp/dockerpullimg.PNG">


**3. Build and Run**

- Construya la imagen:
`$ sudo docker build –tag 1149667/tp-edp:1.0 .`

**Verá un resultado como el siguiente:*

<img src="/screens-tp/dockerbuild.PNG">

- Crear el contenedor a partir de la imagen previamente construída y, acto seguido, lo pone en funcionamiento:

`$ sudo docker run -it –rm 1149667/tp-edp:1.0
`

**Verá un resultado como el siguiente:*

<img src="/screens-tp/dockerrun.PNG">


### Instrucciones para Windows

**1. Instalar docker**

- Descargar haciendo click [aquí](https://docs.docker.com/desktop/install/windows-install/ "aquí")


**2. Instalar “paquete de actualización del kernel de Linux”:**
- Descargar haciendo click [aquí](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi "aquí")

**3. Activar "Hyper-V en características de Windows"**

<img src="/screens-tp/caractwind.PNG">

Esta característica proporciona servicios y herramientas de administración para crear y ejecutar máquinas virtuales y sus recursos

**Los comandos utilizados a partir de este punto, son ejecutados en una terminal de powershell, dentro del directorio clonado del repositorio de GitHub (Tp_EDP)**

**4. Descargar la imagen:**

- Descargar la imagen del proyecto publicada en dockerhub:
`> docker pull 1149667/tp-edp:1.0`

<img src="/screens-tp/dockerpullw.PNG">

**5. Build and run:**

- Construya la imagen:
`> docker build --tag 1149667/tp-edp:1.0 .`

<img src="/screens-tp/dockerbuildw.PNG">

- Crear el contenedor a partir de la imagen previamente construída y, acto seguido, lo pone en funcionamiento:

`> docker run -it --rm 1149667/tp-edp:1.0`

<img src="/screens-tp/dockerrunw.PNG">
