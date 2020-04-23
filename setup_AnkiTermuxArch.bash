#!/data/data/com.termux/files/usr/bin/bash
set -uo pipefail

# Dependencies for TermuxArch
pkg install bsdtar proot

cd ~/AnkiTermuxArch/

# Install and configure TermuxArch for Anki
bash TermuxArch/setupTermuxArch.bash 

# Move/overwrite config files
# TODO: ~/arch is the default install location, but users might have a different path
cp config_files/arch/mirrorlist ~/arch/etc/pacman.d/mirrorlist

# upgrade and install packages in the proot
startarch cmd 'pacman -Syu --noconfirm'
startarch cmd 'pacman -S --noconfirm xfce4 tigervnc anki'

# Anki wont run as root so we'll create a new user in the proot
startarch cmd 'useradd --create-home vncuser'
startarch cmd 'mkdir -p /home/vncuser/bin /home/vncuser/.vnc'

# Copy a vncserver password file for the vncuser. This isn't insecure as connections to the server on only allowed from localhost.
cp config_files/arch/DOTvnc/passwd ~/arch/home/vncuser/.vnc/passwd

# Copy the start and stop scripts. These can be started via the shell or a Termux shortcut
cp config_files/arch/bin/start-vnc-server ~/arch/home/vncuser/bin/
cp config_files/arch/bin/stop-vnc-server ~/arch/home/vncuser/bin/

# Copy the Termux shortcut wrapper scripts
cp config_files/termux-shortcuts/startarch-gui ~/.shortcuts/
cp config_files/termux-shortcuts/stoparch-gui ~/.shortcuts/


