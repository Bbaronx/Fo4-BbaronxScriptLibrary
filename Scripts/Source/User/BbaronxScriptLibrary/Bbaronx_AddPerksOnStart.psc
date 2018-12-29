Scriptname BbaronxScriptLibrary:Bbaronx_AddPerksOnStart extends Quest
{Adds perk(s) to the player}

Perk[] Property varPerks Auto Const
{Perk(s) to add}

Actor Property perkRecipent Auto Const
{Who you're giving the perk to.}

Bool Property showNotification = False Auto Const
{true if should show notification to player, default is false}

String Property notificationText = "Some Mod Using Bbaronx's AddPerksOnStart Script Initilized" Auto Const
{Notification text to be shown if showNotification is true}

;Runcode
Event OnInit()
	
	int cntr = 0
	while(cntr < varPerks.Length)

		perkRecipent.addPerk(varPerks[cntr])
		cntr += 1
		
	endWhile
	
	if(showNotification)
		debug.notification(notificationText)
	endIf

EndEvent


