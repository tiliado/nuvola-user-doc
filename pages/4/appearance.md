Title: Appearance Tweaks

{$ 4/features/appearance.md $}

To change *Appearance Preferences*, open Preferences dialog from the Menu button and click *Appearance* option.

 Gallery 3cols
+[Open Preferences dialog.](:images/4/features/open_preferences.png|330)
+[Choose Appearance.](:images/4/features/choose_appearance_tweaks.png|330)
+[Tweak Appearance to your liking.](:images/4/features/appearance.png|330)


User Interface Theme {: #gtk-theme}
====================

You can change which theme Nuvola should use for its user interface. There are always at least two themes:

  - **Adwaita** is the default theme of the GTK+ 3 toolkit that Nuvola uses for the user interface. It fits perfectly
    into GNOME desktop environment, but not so well into others as it may appear too bright.
  - **Greybird** is the theme that Nuvola ships as its default theme. It is less bright, so it provides better
    cross-desktop appearance than Adwaita.

Other options appear when you install another theme (see below) and **restart Nuvola**.

Get More Themes {: #install-theme}
===============

Since Nuvola apps run isolated in the Flatpak sandbox, they don't have access to themes available on your system, which
are typically located in the `/usr/share/themes` directory. Even if they were able to use them, compatibility issues
could occur because the theme on your system might not be supported by the particular version of the user interface
library used by Nuvola. For that reasons, user interface themes are packaged as *Flatpak extensions*,
can be installed from [Flathub](https://flathub.org/), and are shared by all Flatpak applications using GTK+ 3 toolkit.

Related article: [Nuvola Adds Detection of Headphones and Changes Approach to GTK Theming](https://medium.com/nuvola-news/draft-nuvola-adds-detection-of-headphones-and-changes-approach-to-gtk-theming-274cab6772fe)

Install themes with Flatpak 0.10.1 or newer
-------------------------------------------

Unfortunately, the only way to install new themes is using the `flatpak` command-line tool,
but that may improve in the future.

These instructions use a conventional notation where the commands you should type are prefixed with `$` and the other lines
correspond to its output. When you type the commands to the terminal, don't write the leading `$`.

 1. [Follow Nuvola's installation instructions to add Flathub repository](https://nuvola.tiliado.eu/index/)
    unless you have already done so.

 2. Launch terminal emulator and verify that Flatpak's version is at least `0.10.1`.

        $ flatpak --version
        Flatpak 0.99.3

 3. List available GTK+ 3 themes.

        $ flatpak search gtk3theme
        Application ID                     Version Branch Remotes Description
        org.gtk.Gtk3theme.Greybird                 3.22   flathub Greybird Gtk theme used by Xubuntu
        org.gtk.Gtk3theme.Communitheme             3.22   flathub Communitheme theme
        org.gtk.Gtk3theme.Breeze                   3.22   flathub Breeze Gtk theme matching the KDE Breeze theme
        org.gtk.Gtk3theme.Arc                      3.22   flathub Arc Gtk theme
        org.gtk.Gtk3theme.Ambiance                 3.22   flathub Ambiance Gtk theme used by Ubuntu
        ...

 4. Use the *Application ID* from the list above to install the theme from Flathub.
    Replace `org.gtk.Gtk3theme.Communitheme` with the theme you wish to install.
    Note that the output may vary slightly depending on the Flatpak version on your system.

        $ flatpak install flathub org.gtk.Gtk3theme.Communitheme
        Installing in system:
        org.gtk.Gtk3theme.Communitheme/x86_64/3.22 flathub 43757488f5d3
        Is this ok [y/n]: y
        Installing: org.gtk.Gtk3theme.Communitheme/x86_64/3.22 from flathub
        [####################] 1 delta parts, 1 loose fetched; 93 KiB transferred in 0 seconds
        Now at 43757488f5d3.

 5. Restart Nuvola to make the new theme available.
 
 6. Open *Appearance* settings and select the new theme.

Install themes with Flatpak 0.8.4-0.10.0
----------------------------------------

Unfortunately, the only way to install new themes is using the `flatpak` command-line tool, but that may improve in the future.

These instructions use a conventional notation where the commands you should type are prefixed with `$` and the other lines
correspond to its output. When you type the commands to the terminal, don't write the leading `$`.

 1. [Follow Nuvola's installation instructions to add Flathub repository](https://nuvola.tiliado.eu/index/)
    unless you have already done so.

 2. Launch terminal emulator and verify that Flatpak's version is at least `0.8.4`.

        $ flatpak --version
        Flatpak 0.8.4

 3. List available GTK+ 3 themes.

        $ flatpak remote-ls flathub | grep org.gtk.Gtk3theme
        org.gtk.Gtk3theme.Ambiance
        org.gtk.Gtk3theme.Arc
        org.gtk.Gtk3theme.Breeze
        org.gtk.Gtk3theme.Communitheme
        org.gtk.Gtk3theme.Greybird
        ...
       

 4. Use the *Application ID* from the list above to install the theme from Flathub.
    Replace `org.gtk.Gtk3theme.Communitheme` with the theme you wish to install.
    Note that the output may vary slightly depending on the Flatpak version on your system.

        $ flatpak install flathub org.gtk.Gtk3theme.Communitheme
        Installing: org.gtk.Gtk3theme.Communitheme/x86_64/3.22 from flathub
        [####################] 1 delta parts, 1 loose fetched; 93 KiB transferred in 0 seconds
        Now at 43757488f5d3.

 5. Restart Nuvola to make the new theme available.

 6. Open *Appearance* settings and select the new theme.


Examples of Themes
------------------

 Gallery 3cols
+[Ambiance](:images/4/features/theme_ambiance.png|330)
+[Communitheme](:images/4/features/theme_communitheme.png|330)
+[Arc](:images/4/features/theme_arc.png|330)
+[Adapta](:images/4/features/theme_adapta.png|330)
+[Breeze](:images/4/features/theme_breeze.png|330)
+[elementary](:images/4/features/theme_elementary.png|330)

Dark Theme Variant  {: #dark-theme}
==================

Some themes, e.g., *Adwaita* and *Greybird*, are light as a default but provide a dark variant as well.
Individual Nuvola apps can specify whether they prefer a light or dark variant, and Nuvola applies that preference,
but you change it by this toggle.

Related article: [Nuvola Brings Redesigned Preferences Dialog, More Appearance Settings, and Bug Fixes](https://medium.com/nuvola-news/nuvola-brings-redesigned-preferences-dialog-more-appearance-settings-and-bug-fixes-6545325b35f3) 

 Gallery 2cols
+[Adwaita - light variant](:images/4/features/theme_adwaita_light.png|330)
+[Adwaita - dark variant](:images/4/features/theme_adwaita_dark.png|330)
+[Greybird - light variant](:images/4/features/theme_greybird_light.png|330)
+[Greybird - dark variant](:images/4/features/theme_greybird_dark.png|330)

Scrollbars  {: #scrollbars}
==========

While user interface themes contain styles for scrollbars, they cannot be directly applied to the web view
(the area where web pages are loaded). Instead, Nuvola comes with own custom scrollbar styles in both light and dark
variant. Individual Nuvola apps can specify which option they prefer, and Nuvola applies that preference,
but you can change it by this toggle.

Related article: [Nuvola Apps Runtime Fixes Issue with Spotify & Widevine Plugin, Tweaks Dark Theme Option and Scrollbars](https://medium.com/nuvola-news/nuvola-apps-runtime-fixes-issue-with-spotify-widevine-plugin-tweaks-dark-theme-option-and-dbd22ebdce04)

 Gallery 3cols
+[New scrollbars - light variant.](:images/4/features/scrollbars_light.png|330)
+[New scrollbars - dark variant.](:images/4/features/scrollbars_dark.png|330)
+[Original scrollbars from Chromium.](:images/4/features/scrollbars_default.png|330)

Window Decorations  {: #window-decorations}
==================

There are two types of window decorations (the window title bar and window borders) in Linux desktop environments:

  - **Server-side/system window decorations**  are drawn by the desktop environment.
    The advantage is that they are the same for all apps regardless of whether they
    are native or sandboxed. The disadvantage is that if the theme of particular app
    differs from the system theme, it may cause visual inconsistency (e.g., a dark
    app theme with a light system title bar as shown in the example below).
  - **Client-side/in-app window decorations** are drawn by the application itself.
    The advantages are that Nuvola can place the button bar into the title bar to
    save vertical space, and the visual inconsistency between the title bar and
    the rest of the application cannot occur. The disadvantage is that Nuvola's
    title bar may look different than in other apps on your system.

Nuvola tries to guess which variant is preferred on your system: it uses the in-app decorations in GNOME and elementaryOS
and the system decorations elsewhere. However, you can always change this preference. Since windows cannot change
the decorations after they have been created, you need to **restart Nuvola** to apply new settings.

Related article: [Nuvola Brings Redesigned Preferences Dialog, More Appearance Settings, and Bug Fixes](https://medium.com/nuvola-news/nuvola-brings-redesigned-preferences-dialog-more-appearance-settings-and-bug-fixes-6545325b35f3)

 Gallery 3cols
+[Client-side/in-app window decorations.](:images/4/features/client_side_decorations.png|330)
+[Server-side/system window decorations.](:images/4/features/system_decorations.png|330)
+[A visual inconsistency between the title bar and the rest of the application may occur.](:images/4/features/system_decorations_mismatch.png|330)
+[Client-side/in-app window decorations save vertical space.](:images/4/features/client_vs_system_decorations.png|330)
+[You can get some vertical space back if you hide the toolbar.](:images/4/features/hide_toolbar.png|330)
+[The toolbar is hidden. Click the arrow to reveal it.](:images/4/features/show_toolbar.png|330)
