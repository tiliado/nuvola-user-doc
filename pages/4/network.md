Title: Network Proxy

{$ 4/features/network.md $}

To change *Network Proxy Preferences*, open Preferences dialog from the Menu button and click *Network Proxy* option.

 Gallery 3cols
+[Open Preferences dialog.](:images/4/features/open_preferences.png|330)
+[Choose Network Proxy.](:images/4/features/choose_network.png|330)
+[Adjust Network Proxy settings to your liking.](:images/4/features/network.png|330)

Use system network proxy settings.
:   Proxy settings are read from the system, e.g., from `http_proxy` & `https_proxy` environment variables
    or from GNOME settings.

Use direct connection without a proxy server.
:   Force Nuvola to connect without proxy even though system proxy settings tell otherwise.

Use manual HTTP proxy settings
:   You need to specify `server` and `port` of the HTTP proxy server in your network.

Use manual SOCKS proxy settings
:   You need to specify `server` and `port` of the SOCKS4/SOCKS5 proxy server in your network. Note that SSH tunnels
    also create a proxy of the SOCKS type.
