## About

- [En](#Enguide)
This script is made for a simple ArchLinux installation. Script Developer [JustJabka](https://github.com/JustJabka).

## En guide

1. Connect to wifi, if you have an Ethernet connection, skip this step
2. Format and partition your disk
3. Download curl using the command ```pacstrap /mnt curl```
4. Get **preinstall.sh**

    ```curl https://raw.githubusercontent.com/JustJabka/archinstall/main/preinstall.sh -o preinstall.sh```

5. Run **preinstall.sh**

   ```sh preinstall.sh```

6. Enter:
    - hostname
    - root password
    - username
    - user password
    - EFI partition
    - swap partition
    - root partition

7. Wait for the reboot

## Ru guide

1. Подключитесь к wifi, если у вас Ethernet (проводное) подключение, пропустите этот шаг
2. Отформатируйте и разметите ваш диск
3. Скачайте curl с помощью команды ```pacstrap /mnt curl```
4. Скачайте **preinstall.sh**

    ```curl https://raw.githubusercontent.com/JustJabka/archinstall/main/preinstall.sh -o preinstall.sh```

5. Запустите **preinstall.sh**

   ```sh preinstall.sh```

6. Введите:
    - hostname (название устройства)
    - root password (пароль учетной записи администратора)
    - username (название учетной записи пользователя)
    - user password (пароль учетной записи пользователя)
    - EFI partition (загрузочный раздел)
    - swap partition (раздел для выгрузки неиспользуемых страниц из оперативной памяти)
    - root partition (основной раздел где будет установленна система)

7. Ждите перезагрузки пк
