# 🖥 Gnome Memory Saver

[![fedora 38 screenshot](https://news.itsfoss.com/content/images/2023/02/fedora-38.jpg)](https://news.itsfoss.com/content/images/2023/02/fedora-38.jpg)  

This simple and easy-to-use script provides options that are designed to help you reduce memory usage and restore default settings, ultimately optimizing your system's performance. Feel free to customize and adapt the script according to your specific requirements.

Both PackageKitd and gnome-software are known for consuming a significant amount of memory. To address this, the script takes steps to configure the system in a way that minimizes their impact. For instance, PackageKitd can be set to automatically shut itself off when idle, and gnome-software can be configured to prevent it from running in the background or as a search provider. Implementing these three changes can have a remarkable effect on reducing memory usage, especially during idle periods on Fedora systems.

### ⬇️ Instalation
To use the script, open a Terminal and follow these steps:
1. Download the repository from GitHub `gh repo clone leonardobetti/GnomeMemorySaver` or `git clone https://github.com/leonardobetti/gnomememorysaver.git`
3. Enter the folder `cd GnomeMemorySaver`
4. Enable the script using `chmod +x GnomeMemorySaver.sh`
5. Execute the script by running `sudo ./GnomeMemorySaver.sh`.
6. Reboot

Check memory use afterwards using `free -h` Also, check the process list to make sure gnome-software is not running. packagekitd might be running, and it might be using quite a bit of RAM, but it should exit within 5 minutes.

### 👉🏻 Trade-offs 
By disabling the command-not-found plugin in the shell, you may experience a slight delay of a second or two when receiving suggestions for installing missing packages. Additionally, you won't receive periodic reminders to update your system. However, you can still manually open gnome-software from time to time to perform updates. It's recommended to set up alternative methods or reminders to ensure you stay informed about important system patches and updates.

### 🔧 Compatibility
- [x] Fedora, Redhat and CentOS Linux
- [ ] TBC: Ubuntu, Debian 12 Bookworm and Arch
