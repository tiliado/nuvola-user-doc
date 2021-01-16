Title: Multimedia Keys

{$ 4/features/media_keys.md $}

!!! info "Nuvola Runtime Service Required"
    You need to install [Nuvola Runtime Service](:4/nuvola_service.html) to enable support for Multimedia keys.
    If the service is installed, it starts automatically when needed.
    [More about Nuvola Runtime Service](:4/nuvola_service.html).

!!! warning "Google Chrome eats multimedia keys"
    It has been reported that **Google Chrome 73 or later exclusively binds media keys**,
    which makes them unavailable for other applications including Nuvola.

    If you are affected by this issue, open a new Chrome tab, enter address
    `chrome://flags/#hardware-media-key-handling` and disable **Hardware Media Key Handling**.

To enable *Multimedia keys*, open Preferences dialog from the Menu button and
toggle *Multimedia keys* option on.

 Gallery 3cols
+[Open Preferences dialog.](:images/4/features/open_preferences.png|330)
+[Toggle Multimedia keys option on.](:images/4/features/choose_media_keys.png|330)

Media Keys in GNOME {: #gnome}
===================

{$ 4/desktops/learn_gnome.md $}

Media keys in GNOME are managed by the GNOME Settings Daemon service,
which provides a D-Bus interface Nuvola Player registers to.

Media Keys in Cinnamon {: #cinnamon}
======================

{$ 4/desktops/learn_cinnamon.md $}

Media keys in Cinnamon are managed by the Cinnamon Settings Daemon service, which provides a D-Bus interface compatible
with that of GNOME Settings Daemon. Nuvola Player registers to this interface.

Media Keys in Mate {: #mate}
==================

{$ 4/desktops/learn_mate.md $}

Media keys in Mate are handled by the Mate Settings Daemon service, but differently than GNOME/Cinnamon Settings Daemons.
Mate Settings Daemon doesn't provide a D-Bus interface Nuvola Player could register to, but triggers playback actions
via Nuvola's [Media Player DBus Interface](./mpris.html). Older versions than 1.25 support only a few selected players
and Nuvola Player is not supported.

To sum up, you need to

* Install **Mate Settings Daemon 1.25** or newer.
* Enable [Media Player DBus Interface](./mpris.html).
