# Crear un servicio systemd para imprimir saludos y fecha actual

## 1. Crear el script

Crea un script llamado `date.sh` con el siguiente contenido:

```bash
#!/bin/bash
while true
do
    echo "La fecha actual es: $(date)"
    sleep 1
done
```

Guardamos el script en `/usr/local/bin/date.sh` y aseguramos de que tenga permisos de ejecución (`chmod +x /usr/local/bin/date.sh`).

## 2. Crear el archivo de unidad de systemd

Creamops un archivo llamado `date.service` en `/etc/systemd/system/` con el siguiente contenido:

```plaintext
[Unit]
Description=Imprime saludos y fecha actual

[Service]
Type=simple
ExecStart=/usr/local/bin/date.sh

[Install]
WantedBy=multi-user.target
```

## 3. Habilitar el servicio para iniciar con el sistema

Ejecuta el siguiente comando para habilitar el servicio:

```bash
sudo systemctl enable date.service
```

## 4. Iniciar el servicio

Podemos iniciar el servicio manualmente con el siguiente comando:

```bash
sudo systemctl start date.service
```

## 5. Detener el servicio

Para detener el servicio, utiliza el siguiente comando:

```bash
sudo systemctl stop date.service
```

## 6. Deshabilitar el servicio

Si deseamos deshabilitar el servicio para que no se inicie automáticamente al arrancar el sistema, ejecutamos:

```bash
sudo systemctl disable date.service
```

## Verificar logs del servicio

Puedes verificar los logs del servicio utilizando el comando `journalctl`:

```bash
sudo journalctl -u date.service
```

Con esto, deberíamos tener un servicio systemd funcionando que imprima saludos y la fecha actual infinitamente.