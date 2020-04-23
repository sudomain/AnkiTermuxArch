Project TODO:
Things needed for this project to share a collection with AnkiDroid:
    1. The default AnkiDroid directory (/storage/emulated/0/AnkiDroid) is like a Anki user profile. A
nkiTermuxArch could use this directory as an Anki profile by setting the ANKI_BASE variable to /storage/emulated/0, but this would clutter that directory with Anki files such as addons21, prefs21.db, an
d crash.log. See if AnkiDroid is willing to change their default directory so that it's within an empty directory e.g. /storage/emulated/0/AnkiDroid/AnkiDroid User 1                                         2. AnkiDroid needs to handle the database lock more gracefully. Currently if Anki has the collection open and AnkiDroid is started, both will report a corrupt collection. It's unknown if the collection is actually corrupt as doing a check database in either app will report no issues. I might be wro
ng about just AnkiDroid needing a change, but I'm basing it on my previous experience of running Anki 2.1 and trying to open the same collection with Anki 2.0. Both versions wont open the collection if
the other has it open.                                                                                   3. Set the ANKI_ROOT variable in this project's startvnc-server script by default
