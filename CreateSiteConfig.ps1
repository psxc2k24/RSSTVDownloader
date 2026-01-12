#region Default sites info
$arraySites = @()

######################################## CONFIG START ##############################################
##
## To add a new site copy one of the hastables below and fill in the correct info.
## Run the code. The code is non-destructive and will not replace your current configuration.
##
## Name            : Name of the site. This appear in the site-menu
## URL             : URL for the RSS-feed. Replace the RSSKey with "<RSSKEY>" and UserID with <USERID> please - no need to expose your own.
## RSSKey          : Should remain empty. Will be filled by menu option.
## CategoryKey     : Should probably remain empty. Used to limit the RSS-feed by searching the innerxml for certain categories by keyword.
## Categories      : Should probably remain empty. Used to limit the RSS-feed by searching the innerxml for certain categories.
## Enabled         : Should be 0. Will be changed by activing the site in the menu.
## AutoTrade       : Should be 0. Will be changed by activing the option in the menu.
## HelpString      : This will be displayed below the textboxes you write RSSKey and/or UserID.
## UserIDRequired  : Do the site require a UserID along with the RSS-key? If yes set this to 1.
## UsePersonalFeed : Do you wish to have this app download torrentfiles from your personal RSS-feed? Set to 1 if yes.
## PersonalFeedURL : This is the URL used for your personal bookmark RSS-feed. As with URL - Replace the RSSKey with "<RSSKEY>" and UserID with <USERID>.
## NeverUsed       : A flag that signifies if the site has been used. Leave it to be 1 - it will change automatically.
## SiteCategory    : Classify the site. This will group the new sites in the menu.
##
############

	#TorrentLeech
	$arraySites += [PSCustomObject]@{
		Name = "TorrentLeech"
		URL  = [String]"https://rss24h.torrentleech.org/<RSSKEY>"
		RSSKey = [string]""
		CategoryKey = [string]"Category"
		Categories = [array]@("Episodes", "Episodes HD", "Foreign", "Anime")
		Enabled = [int]0
		AutoTrade = [int]0
		HelpString = [string]"The RSSKey can be found in your profile, under Edit --> RSS Options. https://rss.torrentleech.org/<<RSSKEY>>"
		UserIDRequired = [int]0
		UsePersonalFeed = [int]0
		PersonalFeedURL = [string]""
		NeverUsed = [int]1
		SiteCategory = [string]"General"
	}
	
	#NORBits
	$arraySites += [PSCustomObject]@{
		Name = "NORBits"
		URL  = [String]"https://norbits.net/rss.php?feed=dl&passkey=<RSSKEY>&format=no"
		RSSKey = [string]""
		CategoryKey = [string]""
		Categories = [array]@()
		Enabled = [int]0
		AutoTrade = [int]0
		HelpString = [string]"The RSSKey can be identified in the URL by 'https://norbits.net/rss.php?passkey=<<RSSKEY>>&format=no'"
		UserIDRequired = [int]0
		UsePersonalFeed = [int]0
		PersonalFeedURL = [string]""
		NeverUsed = [int]1
		SiteCategory = [string]"European/Norwegian"
	}
	
	#BLUTOPIA
	$arraySites += [PSCustomObject]@{
		Name = "BLUTopia"
		URL  = [String]"https://blutopia.cc/rss/549.<RSSKEY>"
		RSSKey = [string]""
		CategoryKey = [string]""
		Categories = [array]@()
		Enabled = [int]0
		AutoTrade = [int]0
		HelpString = [string]"The RSSKey can be identified in the URL by 'https://blutopia.cc/rss/<<ID>>.<<RSSKEY>>'"
		UserIDRequired = [int]0
		UsePersonalFeed = [int]0
		PersonalFeedURL = [string]"https://blutopia.cc/rss/5151.<RSSKEY>"
		NeverUsed = [int]1
		SiteCategory = [string]"General"
	}
	
	#TorrentDay
	$arraySites += [PSCustomObject]@{
		Name = "TorrentDay"
		URL  = [String]"https://www.torrentday.com/t.rss?download;2;34;26;14;82;7;46;33;31;32;24;tp=<RSSKEY>;u=<USERID>"
		RSSKey = [string]""
		CategoryKey = [string]""
		Categories = [array]@()
		Enabled = [int]0
		AutoTrade = [int]0
		HelpString = [string]"In the RSS URL the RSSKey can be identified by ';tp=<<RSSKEY>>;' and the UserID by ';u=<<USERID>>;'"
		UserIDRequired = [int]1
		UsePersonalFeed = [int]0
		PersonalFeedURL = [string]"https://torrentday.com/t.rss?bookmarks;download;u=<USERID>;tp=<RSSKEY>"
		NeverUsed = [int]1
		SiteCategory = [string]"General"
	}
	
	#IPTorrents
	$arraySites += [PSCustomObject]@{
		Name = "IPTorrents"
		URL  = [String]"https://iptorrents.com/t.rss?download;4;5;22;23;24;25;26;55;60;65;66;78;79;82;83;99;tp=<RSSKEY>;u=<USERID>"
		RSSKey = [string]""
		CategoryKey = [string]""
		Categories = [array]@()
		Enabled = [int]0
		AutoTrade = [int]0
		HelpString = [string]"In the RSS URL the RSSKey can be identified by ';tp=<<RSSKEY>>;' and the UserID by ';u=<<USERID>>;'"
		UserIDRequired = [int]1
		UsePersonalFeed = [int]0
		PersonalFeedURL = [string]"https://iptorrents.com/t.rss?bookmarks;download;u=<USERID>;tp=<RSSKEY>"
		NeverUsed = [int]1
		SiteCategory = [string]"General"
	}
	
	#DigitalCore
	$arraySites += [PSCustomObject]@{
		Name = "DigitalCore"
		URL  = [String]"https://digitalcore.club/api/v1/rss?cat=10,11,8,9,13,14,12,15&passkey=<RSSKEY>"
		RSSKey = [string]""
		CategoryKey = [string]""
		Categories = [array]@()
		Enabled = [int]0
		AutoTrade = [int]0
		HelpString = [string]"In the RSS URL the RSSKey can be identified by 'passkey=<<RSSKEY>>'"
		UserIDRequired = [int]0
		UsePersonalFeed = [int]0
		PersonalFeedURL = [string]"https://digitalcore.club/api/v1/rss?s=3&passkey=<RSSKEY>"
		NeverUsed = [int]1
		SiteCategory = [string]"General"
	}

######################################## CONFIG END ##############################################

$syncHash = @{}
$syncHash.RegBase = "HKCU:\Software\RSSTVDownloader"

foreach ($site in $arraySites) {
	if (-not (Test-Path -Path "$($syncHash.RegBase)\Sites\$($site.Name)")) {
		$null = New-Item -Path "$($syncHash.RegBase)\Sites\$($site.Name)" -ItemType Directory -Force -ErrorAction Stop
	}
    foreach ($propertyName in $site.PSObject.Properties.Name) {
        if ($propertyName -eq "Name") {
            continue
        }
        if ($site.$propertyName.GetType().Name -eq "String") {
            $propertyType = "string"
            $propertyValue = $site.$propertyName
        } elseif ($site.$propertyName.GetType().Name -eq "Int32") {
            $propertyType = "DWord"
            $propertyValue = $site.$propertyName
        } elseif ($site.$propertyName.GetType().BaseType.Name -eq "Array") {
            $propertyType = "String"
            $propertyValue = $site.$propertyName -join ','
        }
       	try {
            $null = Get-ItemProperty -Path "$($syncHash.RegBase)\Sites\$($site.Name)" -Name "$propertyName" -ErrorAction Stop
    	}
        catch {
            if ($propertyType -eq "String") {
                $null = New-ItemProperty -Path "$($syncHash.RegBase)\Sites\$($site.Name)" -Name "$propertyName" -PropertyType $propertyType -Value "$propertyValue" -Force -ErrorAction Stop #-WhatIf
            } else {
                $null = New-ItemProperty -Path "$($syncHash.RegBase)\Sites\$($site.Name)" -Name "$propertyName" -PropertyType $propertyType -Value $propertyValue -Force -ErrorAction Stop #-WhatIf
            }
        }
    }
}
#endregion
