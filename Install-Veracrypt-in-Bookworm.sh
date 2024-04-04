#!/usr/bin/env bash
# How to Install VeraCrypt on Debian 12

# Update system
sudo apt update && sudo apt upgrade -y

# Import Notesalexp.org APT Repository
sudo apt install dirmngr software-properties-common apt-transport-https curl lsb-release ca-certificates -y

#import the GPG key to verify the authenticity of the repository
curl -fsSL https://notesalexp.org/debian/alexp_key.asc | gpg --dearmor | sudo tee /usr/share/keyrings/alexp_key.gpg > /dev/null

#import the LaunchPAD PPA with the following command:
echo "deb [signed-by=/usr/share/keyrings/alexp_key.gpg] https://notesalexp.org/debian/$(lsb_release -sc)/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/alexp.list

#run an APT update to reflect the newly imported PPA
sudo apt update

#install the Veracrypt
sudo apt install veracrypt


 ########################################################
 # End of script
 
 sudo apt autoremove

 printf "\e[1;32mYou are finished with install! Thanks you.\e[0m\n"
