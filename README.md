# 🖥 GnomeMemorySaver
This simple basic script offers user-friendly options to reduce memory usage and restore default settings, providing an efficient way to optimize system performance. Please feel free to customize and adapt this description as per your requirements. Based on this [post](https://www.reddit.com/r/linuxquestions/comments/123btg9/comment/jdu48ng/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button).

Packagekitd and gnome-software are kind of notorious for using a lot of memory. The script below adopt steps to configure the system not to run them all of the time. PackageKitd can be configured to shut itself off when idle, and gnome-software can also be configured not to run in the background or as a search provider, and those three changes can really significantly reduce memory utilization on Fedora systems at idle. 

### ⬇️ Instalation
To use the script, open a Terminal and follow these steps:
1. Download the repository from GitHub `git clone https://github.com/leonardobetti/gnomememorysaver.git`
3. Enter the folder `cd GnomeMemorySaver`
4. Enable the script using `chmod +x GnomeMemorySaver.sh`
5. Execute the script by running `sudo ./GnomeMemorySaver.sh`.


Then just reboot. Check memory use afterward. Also, check the process list to make sure gnome-software is not running). packagekitd might be running, and it might be using quite a bit of RAM, but it should exit within 5 minutes. Let me know if that helps.

### 👉🏻 Trade-offs 
The command-not-found plugin in the shell will take a second or two longer to suggest installing a missing package, and you won't get periodic reminders to update your system. But if you manually open gnome-software periodically, you can still update that way. Just give yourself some other kind of regular reminder to patch. 
