# Speed Force
  <p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Spinner_font_awesome.svg/240px-Spinner_font_awesome.svg.png">
</p>

**Speed Force** is an application meant to detect a crash through your smartphone and to inform your designated emergency contact person that a possible crash has occurred. While similar tools exist, to our knowledge the nearby contacts feature is not incorporated.

Speed Force will send a prompt to nearby users informing them of a possible accident nearby and if they are willing to assist, in addition to the emergency contact.
  
This tool is meant to be used in a community setting to support each other. Maybe at a busy intersection with local business or a sport team traveling, or maybe just getting groceries for loved ones.

**This Project won New Relic's 2021 Futurestack Hackathon $10,000 Grand Prize!**

## TechStack
- Flutter
- Ruby
- Ruby on Rails

 ## How it works?
  
When the user opens the app they get two options "Stop" and "Run". The app runs in the background if user clicks on "Run". It uses Sensor plugin and gets accelerometer readings. Then it keeps on calculating gforce and when this gforce crosses threshold gforce which happens in the case of accident then the app asks user if they are okay and if the user doesn't reply within 15-20 seconds then a message with gps location is sent to the added emergency contact. We also considered the case in which phone gets damaged so as soon as the gforces crosses threshold the app send gps location of the user to emergency contact. 
  
## [Speed Force Demo](https://youtu.be/vOXrTYrxWoI)

[![Demo](http://i3.ytimg.com/vi/vOXrTYrxWoI/hqdefault.jpg)](https://youtu.be/vOXrTYrxWoI)

## [Speed Force Presentation](http://youtube.com/video/08i3jCKk3hs)

[![Presentation](http://i3.ytimg.com/vi/08i3jCKk3hs/hqdefault.jpg)](http://youtube.com/video/08i3jCKk3hs)

## Screenshots
<pre>
<img src="screenshots/HomeScreen.jpg" width="250"> <img src="screenshots/account.jpg" width="250"> <img src="screenshots/prompt.jpg" width="250"> <img src="screenshots/notification.jpg" width="250"> <img src="screenshots/Nearby.jpg" width="250">
</pre>
