This small gui-app replaces adding filters and regex to rss-feeds in you torrent client.
features include:
 - point and click bookmarks for tv-shows
 - auto-downloading and opening .torrent files
 - auto-downloading out-of-order episode-releases
 - auto-downloading the same release from different sites/feeds (auto-trading)
 - auto-downloading of repacks/propers

Work in progress. Expect frequent updates.



The following sites are recognized (more can be added by request):
 - TL
 - NB
 - BLU
 - TD
 - IPT
 - DC

Requirements:
  - Windows 11
  - Powershell 5 (included in OS)

Powershell modules used (all included in Powershell 5 by default):
  - Microsoft.PowerShell.Utility 3.1.0.0
  - Microsoft.PowerShell.Management 3.1.0.0
  - Microsoft.PowerShell.Core 3.0.0.0

No admin privileges required.



Expected behavior:
  - Creation and updating of content in the HKCU:\Software\RSSTVDownloader registry key
  - Creation of RSSTVDownloader_<DATE>.cmtrace.log files in the %temp% directory. These will not be removed by the app.
  - Creation of RSSTVDownloader_<DATEANDTIME>.torrent files in the %temp% directory. These will be automatically removed when >1 hour has passed.
  - Internet-traffic is limited to fetching of RSS-feeds and .torrent files from sites. There should be no other forms of external communication.



License:
  - None. Feel free to use and abuse as you see fit. There's no restrictions.



Warranty:
  - None. Use this at your own risk. The testing done has not yet resulted in a melted computer, but no guarantees are given!
