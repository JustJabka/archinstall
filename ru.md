## О скрипте

- [Англ](README.md) Ру (укр скоро)

Этот скрипт сделан для простой установки ArchLinux. Разработчик скрипта [JustJabka](https://github.com/JustJabka).

## Ру гайд
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
