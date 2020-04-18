This describes what actions the install script performs. Existing users of TermuxArch should use this rather than the install script because they can skip many steps and the install script overwrites the following files:
1. /etc/pacman.d/mirrorlist to enable mirror..archlinuxarm.org for Geo-IP based mirror selection

Steps:
1. install TermuxArch dependencies in Termux
`pkg install bsdtar proot`
2. install TermuxArch
`bash setupTermuxArch.bash`
3. replace the mirrorlist file
`mv `
4. upgrade packages in the proot
`startarch cmd 'pacman -Syu'`

