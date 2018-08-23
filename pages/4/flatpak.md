Title: Benefits of Flatpak Packages

After years of **struggling with native DEB/RPM** packages, Nuvola switched to cross-distribution Flatpak packages to
provide the best possible user experience. **What are the benefits of Flatpak?**

Cross-Distribution Quality {: #cross-distribution}
==========================

{$ 4/features/cross_distribution_packages.md $} This goal couldn't be attained if Nuvola depended on native
packaging formats such as DEB and RPM packages. *Yes, we tried & failed.*

  * You don't need to worry whether there is a DEB/RPM/PKGBUILD or another native package for your distribution.
    Whenever you hop on another distribution, you can always install Nuvola's flatpak.
  * You don't need to worry whether the package maintainer built Nuvola with compatible and up-to-date libraries.
    Nuvola flatpaks can assure that.
  * You don't need to worry whether the package maintainer built Nuvola with all available features.
    Nuvola flatpaks provide all features.
  * You don't need to worry whether a system update might break Nuvola. Nuvola flatpaks are shielded from your system.

Although installation experience improves over time, we maintain verbose [installation instructions](/index/)
to make it easier.

Continuous Safe Updates {: #continuous}
=======================

{$ 4/features/continuous_safe_updates.md $}

Compatibility with Web Platform {: #web-platform}
===============================

Since the web platform is continually evolving, web engines need to catch up and so does Nuvola.
However, it was **not possible in the past**.

Before Flatpak packaging, Nuvola depended on your system to provide a web engine library called WebKitGTK+.
Although the library had constantly been improving, releasing bug fixes and security updates monthly,
most distributions didn't keep it up-to-date and it was **a dreadful experience** to use it on Long-Term-Support
distributions (e.g. Ubuntu LST or Debian Stable). We didn't have any other choice than to stop supporting
these old releases leaving users with a terribly broken user experience.

The switch to Flatpak packaging allowed us to always use the latest stable WebKitGTK+ with all bells and whistles.
Unfortunately, it wasn't enough. While web streaming services had been moving to use Media Stream Extension (MSE)
instead of Flash plugin for audio playback, WebKitGTK didn't support this technology. The Flatpak packaging rescued
us again as we could replace WebKitGTK+ with a better web engine, Chromium Embedded Framework, which supports MSE.
Nuvola could finally offer **audio playback without Flash plugin**! Note that third-party builds haven't switched
the new engine yet, so you can expect web compatibility issues there.
