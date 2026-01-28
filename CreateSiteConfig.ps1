#region Default sites info
$arraySites = @()

######################################## CONFIG START ##############################################
##
## To add a new site copy one of the hastables below and fill in the correct info.
## Run the code. The code is non-destructive and will not replace your current configuration.
##
## Name            : Name of the site. This appear in the site-menu
## SiteCategory    : Classify the site. This will group the new sites in the menu.
## Enabled         : Should be 0. Will be changed by activing the site in the menu.
## RSSKey          : Should remain empty. Will be filled by menu option.
## UserIDRequired  : Do the site require a UserID along with the RSS-key? If yes set this to 1.
## NeverUsed       : A flag that signifies if the site has been used. Leave it to be 1 - it will change automatically.
## URL             : URL for the RSS-feed. Replace the RSSKey with "<RSSKEY>" and UserID with <USERID> please - no need to expose your own.
## PersonalFeedURL : This is the URL used for your personal bookmark RSS-feed. As with URL - Replace the RSSKey with "<RSSKEY>" and UserID with <USERID>.
## WishlistURL     : URL for RSS-feed for every category on site. Used when making a wishlist. As with URL - Replace the RSSKey with "<RSSKEY>" and UserID with <USERID>.
## UseFeed         : Toggle the main feed on or off. Default is 1 (on)-
## UsePersonalFeed : Toggle the Personal feed on or off. Default is 0 (off).
## UseWishlistFeed : Toggle the Wishlist feen on or off. Default is 0 (off).
## HelpString      : This will be displayed below the textboxes you write RSSKey and/or UserID.
## CategoryKey     : Should probably remain empty. Used to limit the RSS-feed by searching the innerxml for certain categories by keyword.
## Categories      : Should probably remain empty. Used to limit the RSS-feed by searching the innerxml for certain categories.
## AutoTrade       : Should be 0. Will be changed by activing the option in the menu.
##
############

	#TorrentLeech
	$arraySites += [PSCustomObject]@{
		Name		 = "TorrentLeech"
		SiteCategory = [string]"General"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]0
		NeverUsed    = [int]1
		URL		     = [String]"https://rss24h.torrentleech.org/<RSSKEY>"
		PersonalFeedURL = [string]""
		WishlistURL  = [string]"https://rss24h.torrentleech.org/<RSSKEY>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"The RSSKey can be found in your profile, under Edit --> RSS Options. https://rss.torrentleech.org/<<RSSKEY>>"
		CategoryKey  = [string]"Category"
		Categories   = [array]@("Episodes", "Episodes HD", "Foreign", "Anime")
		AutoTrade    = [int]0
	}
	
	#NORBits
	$arraySites += [PSCustomObject]@{
		Name		 = "NORBits"
		SiteCategory = [string]"European/Norwegian"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]0
		NeverUsed    = [int]1
		URL		     = [String]"https://norbits.net/rss.php?feed=dl&passkey=<RSSKEY>&format=no"
		PersonalFeedURL = [string]""
		WishlistURL  = [String]"https://norbits.net/rss.php?feed=dl&passkey=<RSSKEY>&format=no"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"The RSSKey can be identified in the URL by 'https://norbits.net/rss.php?passkey=<<RSSKEY>>&format=no'"
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
	}
	
	#BLUTOPIA
	$arraySites += [PSCustomObject]@{
		Name		 = "BLUTopia"
		SiteCategory = [string]"TV/Movies"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]0
		NeverUsed    = [int]1
		URL		     = [String]"https://blutopia.cc/rss/549.<RSSKEY>"
		PersonalFeedURL = [string]"https://blutopia.cc/rss/5151.<RSSKEY>"
		WishlistURL  = [String]"https://blutopia.cc/rss/547.<RSSKEY>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"The RSSKey can be identified in the URL by 'https://blutopia.cc/rss/<<ID>>.<<RSSKEY>>'"
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
	}
	
	#TorrentDay
	$arraySites += [PSCustomObject]@{
		Name		 = "TorrentDay"
		SiteCategory = [string]"General"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]1
		NeverUsed    = [int]1
		URL		     = [String]"https://www.torrentday.com/t.rss?download;2;7;14;24;26;31;32;33;34;46;82;tp=<RSSKEY>;u=<USERID>"
		PersonalFeedURL = [string]"https://torrentday.com/t.rss?bookmarks;download;u=<USERID>;tp=<RSSKEY>"
		WishlistURL  = [string]"https://torrentday.com/t.rss?download;1;2;3;4;5;7;8;9;10;11;12;13;14;16;17;18;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;41;42;43;44;45;46;47;48;82;95;96;102;u=<USERID>;tp=<RSSKEY>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"In the RSS URL the RSSKey can be identified by ';tp=<<RSSKEY>>;' and the UserID by ';u=<<USERID>>;'"
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
	}
	
	#IPTorrents
	$arraySites += [PSCustomObject]@{
		Name		 = "IPTorrents"
		SiteCategory = [string]"General"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]1
		NeverUsed    = [int]1
		URL		     = [String]"https://iptorrents.com/t.rss?download;4;5;22;23;24;25;26;55;60;65;66;78;79;82;83;99;tp=<RSSKEY>;u=<USERID>"
		PersonalFeedURL = [string]"https://iptorrents.com/t.rss?bookmarks;download;u=<USERID>;tp=<RSSKEY>"
		WishlistURL  = [string]"https://iptorrents.com/t.rss?download;1;2;3;4;5;6;7;8;20;21;22;23;24;25;26;35;36;37;38;43;44;45;47;48;50;54;55;58;60;62;64;65;66;68;69;71;77;78;79;80;81;82;83;84;85;86;87;89;90;91;92;93;94;95;96;98;99;100;101;102;tp=<RSSKEY>;u=<USERID>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"In the RSS URL the RSSKey can be identified by ';tp=<<RSSKEY>>;' and the UserID by ';u=<<USERID>>;'"
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
	}
	
	#DigitalCore
	$arraySites += [PSCustomObject]@{
		Name		 = "DigitalCore"
		SiteCategory = [string]"General"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]0
		NeverUsed    = [int]1
		URL		     = [String]"https://digitalcore.club/api/v1/rss?cat=8,9,10,11,12,13,14,15&passkey=<RSSKEY>"
		PersonalFeedURL = [string]"https://digitalcore.club/api/v1/rss?s=3&passkey=<RSSKEY>"
		WishlistURL  = [string]"https://digitalcore.club/api/v1/rss?cat=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44&passkey=<RSSKEY>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"In the RSS URL the RSSKey can be identified by 'passkey=<<RSSKEY>>'"
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
	}

	#FunFile
	$arraySites += [PSCustomObject]@{
		Name		 = "Funfile"
		SiteCategory = [string]"General"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]0
		NeverUsed    = [int]1
		URL		     = [String]"https://www.funfile.org/rss.php?feed=dl&cat=7&torrentonly=yes&passkey=<RSSKEY>"
		PersonalFeedURL = [string]"https://www.funfile.org/rss.php?feed=dl&bookmark=yes&torrentonly=yes&passkey=<RSSKEY>"
		WishlistURL  = [string]"https://www.funfile.org/rss.php?feed=dl&cat=4,6,7,19,22,27,31,40,43,44,49&torrentonly=yes&passkey=<RSSKEY>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"In the RSS URL the RSSKey can be identified by 'passkey=<<RSSKEY>>'. Remember to whitelist the public ip where the app is running. Take note that the date in the feeds are fake."
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
	}

	#RevolutionTT
	$arraySites += [PSCustomObject]@{
		Name		 = "RevoTT"
		SiteCategory = [string]"General"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]0
		NeverUsed    = [int]1
		URL		     = [String]"https://revott.me/rss.php?feed=dl&passkey=<RSSKEY>"
		PersonalFeedURL = [string]"https://revott.me/rss.php?feed=dl&bookmarks=on&passkey=<RSSKEY>"
		WishlistURL  = [string]"https://revott.me/rss.php?feed=dl&passkey=<RSSKEY>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"In the RSS URL the RSSKey can be identified by 'passkey=<<RSSKEY>>'."
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
	}

	#Luminarr
	$arraySites += [PSCustomObject]@{
		Name		 = "Luminarr"
		SiteCategory = [string]"TV/Movies"
		Enabled	     = [int]0
		RSSKey	     = [string]""
		UserIDRequired = [int]0
		NeverUsed    = [int]1
		URL		     = [String]"https://luminarr.me/rss/15.<RSSKEY>"
		PersonalFeedURL = [string]"https://luminarr.me/rss/17.<RSSKEY>"
		WishlistURL  = [string]"https://luminarr.me/rss/16.<RSSKEY>"
		UseFeed	     = [int]1
		UsePersonalFeed = [int]0
		UseWishlistFeed = [int]0
		HelpString   = [string]"In the RSS URL the RSSKey can be identified by 'https://luminarr.me/rss/<number>.<<RSSKEY>>'."
		CategoryKey  = [string]""
		Categories   = [array]@()
		AutoTrade    = [int]0
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
