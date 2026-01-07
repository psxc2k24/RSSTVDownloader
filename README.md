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

App must run on the same computer as your torrent client.
No admin privileges required.



Expected behavior:
  - Creation and updating of content in the HKCU:\Software\RSSTVDownloader registry key
  - Creation of RSSTVDownloader_DATE.cmtrace.log files in the %temp% directory. These will not be removed by the app.
  - Creation of RSSTVDownloader_DATEANDTIME.torrent files in the %temp% directory. These will be automatically removed when >1 hour has passed.
  - Internet-traffic is limited to fetching of RSS-feeds and .torrent files from sites. There should be no other forms of external communication.



License:
  - None. Feel free to use and abuse as you see fit. There's no restrictions.



Warranty:
  - None. Use this at your own risk. The testing done has not yet resulted in a melted computer, but no guarantees are given!



VirusTotal Scan:
  - https://www.virustotal.com/gui/url/896468e582ef5721171209722079c3fd9b0e4634c6253f833d13cc332a4d82a7



Screenshots:
![Screenshot 1](./Images/Screenshot1.jpg)
![Screenshot 2](./Images/Screenshot2.jpg)
![Screenshot 3](./Images/Screenshot3.jpg)
![Screenshot 4](./Images/Screenshot4.jpg)



Short instructions:
  - Menu-option 'Sites':
    - This lists the sites availible. The ones marked are active, meaning the RSS-feed for site is downloaded at intervals.
    - Each site listed has two suboptions:
      - 'Set rSSKey' - this will set/change the RSSKey (and UserID if applicable)
      - 'Enable Autotrade for this site' - Enables/disabled the Autotrade option.
        'Autotrade' is defined as downloading the same release(name) from different sites, not triggering the dupe-control for that release. Take care when activating - some sites re-releases the torrent with the same name after repackaging and/or adding files to the release. Observe on which sites you wish to have the Autotrade option on.

  - Menu-option 'Options':
    - 'Auto-download repack/proper' - a release may be redownloaded if a repack/proper is found. Note that any new repack/proper will be ignored once a repack/proper has been downloaded.
    - 'Do not auto-bookmark episodes with unknown source or resolution' - some releases do not have a known resolution or source. If the bookmark accepts any resolution and/or source, and the release does not match any known entry, the release will then be classified as a no-match.
    - 'Limit RSS-feeds to the last hour' - RSS-feeds can become quite big, and if several RSS-feeds are actived the total number of releases to be processed may have a negative impact on the computer/app. Limiting to the last hour will significantly reduce the impact. Beware not to set this if you set the RSS-intrval to 1 hour or more.
    - 'Ignore year in releasename' - some releases have the year in the releasename, some do not. You can select to ignore the year when auto-downloading releases.
    - 'RSS Interval' - how often should the app refresh the rss-feeds?
    - 'Auto-Bookmark missing episodes' - this option keep track of which episodes are downloaded, and which episodes have been skipped. Skipped episodes may happen when several episodes are releases simultanously, out of order.
    - 'Add Source' - add your own keyword as a valid Source.
    - 'Add Resolution' - add your own keyword as a valid Resolution.

  - Menu-option 'Remove bookmark':
    - This lists current bookmarks with info on last season/episode found. For each bookmark you may find sub-options to remove individual Sites/Releasegroups/Sources and/or Resolutions, or all of them.

  - Option 'Include all previous episodes in season' - this will bookmark all previous episodes, marking them as seen/downloaded.

  - Button 'Refresh' - this will refresh all RSS-feeds and list the result in a table, allowing you to easily select shows to bookmark.

  - Button 'Bookmark' - when bookmarking a show, you mark the selected season/episode as seen/downloaded. If you wish to auto-download an episode make sure to edit the episodenumber to a previous one.

  - 'Resolution' - this is a multiselect option. If none are selected all options are valid.

  - 'Source' - this is a multiselect option. If none are selected all options are valid.

  - 'Releasegroup' - if not filled all groups are allowed.
  