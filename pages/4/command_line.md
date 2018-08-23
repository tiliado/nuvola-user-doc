Title: Command-line Interface

!!! info "Nuvola Runtime Service Required"
    You need to install [Nuvola Runtime Service](:4/nuvola_service.html) to enable command-line interface.
    If the service is installed, it starts automatically when needed.
    [More about Nuvola Runtime Service](:4/nuvola_service.html).
    
Create Alias
============

Flatpak targets desktop applications, so the user experience of command-line tools is far from perfect.
You can launch Nuvola's command-line controller, `nuvolactl`, from the flatpak package with the following command:

```
flatpak run --command=nuvolactl eu.tiliado.Nuvola
```

However, we recommend creating an alias for that and then call just `nuvolactl`:

```
$ echo -e '#!/bin/sh\nflatpak run --command=nuvolactl eu.tiliado.Nuvola "$@"' | sudo tee /usr/local/bin/nuvolactl
[sudo] password for fenryxo:
#!/bin/sh
flatpak run --command=nuvolactl eu.tiliado.Nuvola "$@"
$ sudo chmod a+x /usr/local/bin/nuvolactl
$ ls -l /usr/local/bin/nuvolactl
-rwxr-xr-x. 1 root root 64 Aug 20 19:17 /usr/local/bin/nuvolactl
$ nuvolactl --help
...
```

Default Application
==================

Since the command-line interface is tightly coupled with [Nuvola Runtime Service](:4/nuvola_service.html),
it can control all running apps.

 * If you want to control a particular app, use `nuvolactl -a APP_ID`.
 * Otherwise, the last active app is selected by default.
 * You can list running apps with `nuvolactl api-master /nuvola/core/list_apps`.


Nuvolactl Usage
===============

Run `nuvolactl --help` to show command-line options.


```
$ nuvolactl --help
Usage:
  nuvolactl [OPTION?] COMMAND PARAMS... - Control Nuvola Apps

Help Options:
  -h, --help               Show help options

Application Options:
  -a, --app=ID             Web app to control.
  -v, --verbose            Print informational messages
  -D, --debug              Print debugging messages
  -V, --version            Print version and exit
  -L, --log-file=FILE      Log to file

Commands:

  list-actions
    - list available actions

  action NAME [STATE]
    - invoke action with name NAME
    - STATE parameter is used to select option of a radio action

  action-state NAME
    - get state of radio or toggle action with name NAME
    - does nothing for simple actions
    - you can set state actions with `action` command

  track-info [KEY]
   - prints track information
   - KEY can be 'all' (default), 'title', 'artist', 'album', 'state',
     'artwork_location', 'artwork_file' or 'rating'.
```

You might be interested in track details: 

```
$ nuvolactl track-info
Title: Better Now
Artist: Post Malone
State: playing
Artwork location: https://e-cdns-images.dzcdn.net/images/cover/c000a4d39f31f3716bf3f11aa5fab080/250x250.jpg
Artwork file: /home/fenryxo/.var/app/eu.tiliado.NuvolaAppDeezer/cache/nuvolaruntime/apps_data/deezer/api-downloads/player.artwork.7
```

Or try some actions:

```
$ nuvolactl list-actions
Available actions

Format: NAME (is enabled?) - label

Group: main

 *  activate (enabled) - Activate main window
 *  quit (enabled) - Quit
 *  about (enabled) - About
 *  welcome (enabled) - Welcome screen
 *  help (enabled) - Help
 *  preferences (enabled) - Preferences
 *  toggle-sidebar (enabled) - Show sidebar

Group: playback

 *  play (disabled) - Play
 *  pause (enabled) - Pause
 *  toggle-play (enabled) - Toggle play/pause
 *  stop (enabled) - Stop
 *  prev-song (enabled) - Previous song
 *  next-song (disabled) - Next song
 *  seek (enabled) - Seek
 *  change-volume (enabled) - Change volume
 *  playback-notification (enabled) - Show playback notification
 *  love-track (enabled) - Favorite track

Group: go

 *  go-home (enabled) - Home
 *  go-back (enabled) - Back
 *  go-forward (disabled) - Forward
 *  go-reload (enabled) - Reload
 *  go-load-url (enabled) - Load URL...

Group: view

 *  zoom-in (enabled) - Zoom in
 *  zoom-out (enabled) - Zoom out
 *  zoom-reset (enabled) - Original zoom

$ nuvolactl track-info state
playing
$ nuvolactl action toggle-play
$ nuvolactl track-info state
paused
$ nuvolactl action toggle-play
$ nuvolactl track-info state
playing
$ nuvolactl action next-song
$ nuvolactl action quit
$ nuvolactl track-info
Error: Communication with Nuvola Apps master instance failed: Failed to create socket channel from name 'N3'. Connection refused
```
