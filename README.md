## En

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
