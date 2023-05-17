#!/bin/bash

# Welcome message and ASCII art
clear

cat << "EOF"
  __  __                                  _____                      
 |  \/  |                                / ____|                     
 | \  / | ___ _ __ ___   ___  _ __ _   _| (___   __ ___   _____ _ __ 
 | |\/| |/ _ \ '_ ` _ \ / _ \| '__| | | |\___ \ / _` \ \ / / _ \ '__|
 | |  | |  __/ | | | | | (_) | |  | |_| |____) | (_| |\ V /  __/ |   
 |_|  |_|\___|_| |_| |_|\___/|_|   \__, |_____/ \__,_| \_/ \___|_|   
                                    __/ |                            
                                   |___/                             


---



Welcome, Traveler. This script offers user-friendly options to reduce memory usage and restore default settings, providing an efficient way to optimize system performance. Please feel free to customize and adapt this description as per your requirements.

Copyleft © 2023 Leonardo Betti | leonardobetti [at] gmail.com 

EOF
sleep 2

# Function to reduce memory
reduce_memory() {
    echo "Reducing memory..."
    sudo sed -i -e 's/^#ShutdownTimeout=/ShutdownTimeout=/' /etc/PackageKit/PackageKit.conf
    sudo systemctl restart packagekit.service
    mkdir -pv ~/.config/autostart && cp /usr/share/applications/org.gnome.Software.desktop ~/.config/autostart/
    echo "X-GNOME-Autostart-enabled=false" >> ~/.config/autostart/org.gnome.Software.desktop
    dconf write /org/gnome/desktop/search-providers/disabled "['org.gnome.Software.desktop']"
    echo "Done, memory reduced successfully. Please reboot your computer."
}

# Function to restore default settings
restore_defaults() {
    echo "Restoring default settings..."
    sudo sed -i -e 's/^ShutdownTimeout=/#ShutdownTimeout=/' /etc/PackageKit/PackageKit.conf
    sudo systemctl restart packagekit.service
    rm -f ~/.config/autostart/org.gnome.Software.desktop
    dconf write /org/gnome/desktop/search-providers/enable "['org.gnome.Software.desktop']"
    echo "Done, default settings restored successfully."
}

# Main script
echo "Choose an option:"
echo "1) Reduce Memory usage"
echo "2) Back to Default Settings"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        reduce_memory
        ;;
    2)
        restore_defaults
        ;;
    *)
        echo "Invalid choice. Exiting."
        ;;
esac
