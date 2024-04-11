cd ~
echo '  _ ____ _____          _ ____  
 / |___ \_   _|_ _  ___/ |___ \ 
 | | __/ || |/ _` |/ _ \ | __) |
 | |/ __/ | | (_| |  __/ |/ __/ 
 |_|_____||_|\__,_|\___|_|_____|
                                '
echo '**12Tae12 Software REAL system upgrade Version 1.0.1**'
echo 'Running basic upgrade...'
echo 'Ckecking if installer depends are OK.'
echo 'Please give root/sudo password.'
su root
sudo apt install aptitude --assume-yes
echo 'Updating system...'
sudo aptitude update
sudo aptitude upgrade
echo 'Removing old files...'
sudo rm -d -r ~/os-up

echo 'Asking github for updates...'
git clone --recurse-submodules https://github.com/12tae12/os-up
echo 'Updated script is now installed. Running new script.'
cd ~/os-up
sudo chmod +x ./os-up.sh
gnome-terminal -- ./os-up.sh

echo 'Done.'
echo 'If you want to run the script again, run the command:'
echo 'cd ~/os-up'
echo 'sudo chmod +x ./upgrade.sh'