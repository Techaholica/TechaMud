# TechaMud
A MUD users can play in Twitch chat. It lets users bar hop, buy drinks, play games, etc.

See this article for an explanation of how the game works: http://techaholica.com/2015/01/10/drunk-of-legends-explained/

To install using MIRC, copy the contents to your %APPDATA%/mirc directory. Replace the directory #Techaholica with your own channel name. If you are going to run this in more than one channel, you can copy the contents to the different #ChannelName directories under %APPDATA%/mirc. 

To run, in MIRC Load the TechaMud.ini file. You can use the TechaMud.config file to change various settings about the MUD.

- Add classes by adding INI files to the classes directory.
- Add locations by modifying the locations/locations.ini file
- Add objects by adding INI files to objects directory
- If you want to show the currently playing song at the Empire Records locations do the following:
  - Download and setup VLC media player to stream music (you can lookup how to do this)
  - Run the NowPlaying.vbs file
  - You will need to open Task Manager to shut off this script when you are done
  - It will write the currently playing song to the nowplaying.txt file
