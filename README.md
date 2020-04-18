Install Requirements:
This script uses [TermuxArch](https://github.com/SDRausty/TermuxArch) to install an instance of [Arch Linux ARM](https://archlinuxarm.org/) inside a [PRoot environment](https://proot-me.github.io/) inside of [Termux](https://termux.com/). It then installs Anki, a desktop environment (XFCE4), and a VNC Server (tigervnc). The VNC server is bound to localhost so no need to worry about other devices connecting. By default this project uses a different copy of your Anki collection than AnkiDroid uses. This may change in the future (see Project TODO section of this README), but in the mean time make sure to keep both in sync.
but in the future

1. internal storage space (including space used during unzipping). And the size of the user's collection
2. Root not needed

Install Instructions:
1. Install Termux from F-Droid or the Play Store (Users on Android 5/6 can get it by enabling the F-Droid Archive repo in settings)
2. Plug your device into a charger, connected to WiFi, and turn off data
3. Copy and paste the following line of code into Termux
``
4. While
Auxiliary Apps:
1. Termux:Widget (for Android shortcuts that will execute the startanki and stopanki scripts)
2. Hacker's Keyboard (for a keyboard with arrow keys which is useful when switching fields in Anki)

Uninstall Instructions:
Uninstalling Termux will remove all files associated with this project. If you want to keep Termux because you use it for other things, run this command to remove everything associated with the Arch install:
`bash setupTermuxArch.bash purge`

Project TODO:
Things needed for this project to share a collection with AnkiDroid:
    1. The default AnkiDroid directory (/storage/emulated/0/AnkiDroid) is like a Anki user profile. AnkiTermuxArch could use this directory as an Anki profile by setting the ANKI_BASE variable to /storage/emulated/0, but this would clutter that directory with Anki files such as addons21, prefs21.db, and crash.log. See if AnkiDroid is willing to change their default directory so that it's within an empty directory e.g. /storage/emulated/0/AnkiDroid/AnkiDroid User 1
    2. AnkiDroid needs to handle the database lock more gracefully. Currently if Anki has the collection open and AnkiDroid is started, both will report a corrupt collection. It's unknown if the collection is actually corrupt as doing a check database in either app will report no issues. I might be wrong about just AnkiDroid needing a change, but I'm basing it on my previous experience of running Anki 2.1 and trying to open the same collection with Anki 2.0. Both versions wont open the collection if the other has it open.
    3. Set the ANKI_ROOT variable in this project by default
