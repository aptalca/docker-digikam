#DigiKam

This is an X application accessible in a browser window.

##Install On unRaid:

On unRaid, install from the Community Repositories and enter the app folder location and the port for the webUI.


##Install On Other Platforms (like Ubuntu or Synology 5.2 DSM, etc.):

On other platforms, you can run this docker with the following command:

```
docker run -d --name="DigiKam"  -e EDGE="0" -e HEIGHT="720" -e WIDTH="1280" -v /path/to/config:/config:rw -v /path/to/pictures:/pictures -v /etc/localtime:/etc/localtime:ro -p XXXX:8080 aptalca/docker-digikam
```

###Setup Instructions:

- Replace "/path/to/config" with your choice of folder location. That is where all of your configuration and library files will reside, so you won't lose data when you update, reinstall, etc.
- Replace "XXXX" with your choice of port.
- By default, this installs version 4.9.0 but if you set the EDGE variable in the run command to "1", it will update itself to the latest version every time the container is started.
- You can change the screen resolution by modifying the WIDTH and HEIGHT variables.

To access the GUI, point your web browser to http://SERVERIP:PORT/#/client/c/digiKam (Replace SERVERIP and PORT with your values)
