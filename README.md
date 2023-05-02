# Escaneo y ataque a máquinas en red local
Este script en Bash realiza un escaneo de la red local en busca de máquinas disponibles y, en caso de encontrarlas, las ataca para instalar un servidor web Apache2 y mostrar un mensaje personalizado en su página principal. Este script requiere la herramienta sshpass para permitir la conexión automática a las máquinas detectadas.

# Requisitos


sshpass: para permitir la conexión automática a las máquinas detectadas sin necesidad de ingresar una contraseña manualmente. Puede instalarse en sistemas basados en Debian/Ubuntu con el comando sudo apt-get install sshpass.


# Uso

Clone el repositorio o descargue el archivo pendejo-adrian.sh en su equipo.
Abra una terminal en la ubicación del archivo pendejo-adrian.sh.
Configure el valor de la variable PREF con el prefijo de la dirección IP de su red local (por ejemplo, si su red local es 192.168.0.XXX, el valor de PREF debe ser 192.168.0).
En la línea de comando, escriba chmod +x pendejo-adri.sh y presione Enter para darle permisos de ejecución al archivo.
Ejecute el script escribiendo ./pendejo-adrian.sh y presione Enter.
Espere a que se complete el escaneo y el ataque de las máquinas disponibles en su red local.


# Notas

Tenga en cuenta que el uso de este script en redes no autorizadas puede violar la ley y puede resultar en consecuencias legales. Se recomienda utilizar este script únicamente con fines educativos y con la debida autorización de las partes involucradas.
El script utiliza la contraseña usuario para acceder a las máquinas de destino. Asegúrese de cambiar esta contraseña por la correspondiente a sus máquinas si es diferente. También se recomienda que se utilice un archivo de configuración SSH adecuado para evitar la necesidad de ingresar contraseñas en el futuro.
