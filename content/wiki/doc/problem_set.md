# 1._make_ command execute correctly, but the site can't be reached for some reasons.（Solved）

Description: By using _telnet_ command, we can know certain port's status. As a result, the 1313 port of wsl is running by hugo, but that of windows is closed. Apparently, solve the disconnection between wsl and windows gonna handle this problem.

### ref：  
>[https://logi.im/script/achieving-access-to-files-and-resources-on-the-network-between-win10-and-wsl2.html](https://logi.im/script/achieving-access-to-files-and-resources-on-the-network-between-win10-and-wsl2.html)  
[https://www.cnblogs.com/hapjin/p/5367429.html](https://www.cnblogs.com/hapjin/p/5367429.html)

For program listen to **0.0.0.0** in wsl2, win10 can be accessed directly through localhost:port. Therefore we have to set bind address equal to 0.0.0.0 on hugo
>hugo server --bind=0.0.0.0 --port=1313 --minify --theme book 

Reason: The default address of localhost is Loopback address **127.0.0.1**. It can only be accessed by local machine. So if we want to access wsl2 address from other consoles, we have to replace the localhost in /etc/hosts.
