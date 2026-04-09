### Folders structure
```console
[root@docker ~]# tree -L 2 /volumes/graylog/
/volumes/graylog/
├── datanode
│   └── data
├── mongodb
│   ├── configdb
│   └── db
└── server
    └── data
```

### Preflight Login

When you sign on to Graylog for the first time, you must use the initial credentials for the Graylog web interface, which can be found in the log file after first starting the Graylog service.
```console
[root@graylog-server ~]# tail /var/log/graylog-server/server.log
```
```console
graylog-1   |                                                              ---
graylog-1   |                                                              ---
graylog-1   |                                                              ---
graylog-1   |     ########  ###   ######### ##########   ####         #### ---         .----               ----
graylog-1   |   ###############   ###################### #####       ####  ---      ------------       .----------- --
graylog-1   |  #####     ######   #####              #### ####      ####   ---     ---        ---     ---        -----
graylog-1   | ####         ####   ####       ############  ####     ####   ---    --           ---   ---           ---
graylog-1   | ###           ###   ####     ##############   ####   ####    ---   ---            --   --             --
graylog-1   | ####         ####   ####    ####       ####    #### ####     ---   ---            --   --            .--
graylog-1   | #####       #####   ####    ####       ####     #######      ---    ---          ---   ---           ---
graylog-1   |  ################   ####     ##############     ######-       --     ----      ----      ---       -----
graylog-1   |    ##############   ####      #############      #####        -----   -----------         ----------  --
graylog-1   |              ####                                ####                                                ---
graylog-1   | #####       ####                                ####                                     -          .--
graylog-1   |   #############                                ####                                     -----     ----
graylog-1   |      ######                                   ####                                          -------
graylog-1   | 
graylog-1   | ========================================================================================================
graylog-1   | 
graylog-1   | It seems you are starting Graylog for the first time. To set up a fresh install, a setup interface has
graylog-1   | been started. You must log in to it to perform the initial configuration and continue.
graylog-1   | 
graylog-1   | Initial configuration is accessible at 0.0.0.0:9000, with username 'admin' and password 'ghWgeIAkKl'.
graylog-1   | Try clicking on http://admin:fuysadiuf@0.0.0.0:9000
graylog-1   | 
graylog-1   | ========================================================================================================
graylog-1   | 
```

### Access the Web Interface
```
user:admin 
pass:admin
```
