Title: Keyboard Shortcuts

{$ 4/features/keyboard_shortcuts.md $}

To change *Keyboard Shortcuts Preferences*, open Preferences dialog from the Menu button and click *Keyboard Shortcuts*
option.

 Gallery 3cols
+[Open Preferences dialog.](:images/4/features/open_preferences.png|330)
+[Choose Keyboard Shortcuts.](:images/4/features/choose_keyboard_shortcuts.png|330)
+[Adjust Keyboard Shortcuts to your liking.](:images/4/features/keyboard_shortcuts.png|330)

There are two kinds of keyboard shortcuts:

  - **In-app shortcuts** work when Nuvola is running as the active window in the foreground.
  
  - **Global shortcuts** work even when Nuvola is not the active window, or it is
    [running hidden in the background](:4/background_playback.html).
    There are a few caveats though:
      - Global keyboard shortcuts **must not conflict**. If another app has grabbed `Ctrl+P`, Nuvola cannot use that for
        *Play* action, for example.
      - To minimize conflicts, Nuvola delivers bound global shortcuts only to the latest active Nuvola app. For example,
        if both Deezer and Spotify are running in the background and share a `Ctrl+P` keybinding, it will be delivered
        only to one of them - the one whose window was active least recently.

!!! info "Nuvola Runtime Service Required"
    You need to install [Nuvola Runtime Service](:4/nuvola_service.html) to enable Global keyboard shortcuts.
    If the service is installed, it starts automatically when needed.
    [More about Nuvola Runtime Service](:4/nuvola_service.html).

