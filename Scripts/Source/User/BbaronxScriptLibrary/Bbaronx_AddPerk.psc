Scriptname BbaronxScriptLibrary:Bbaronx_AddPerk extends Quest
{Adds perk(s) to the player}

Bool Property showNotification = False Auto Const
{true if should show notification to player}

String Property notificationText = "Some Mod Using Bbaronx's AddPerk Script Initilized" Auto Const
{Notification text if showNotification = True}

Perk[] Property perksToAdd Auto Const
{Perk(s) to add}

Actor Property perkRecipent Auto Const
{Who you're giving the perk to.}

;Runcode
Event OnInit()
	
	int cntr = 0
	while(cntr < perksToAdd.Length)

		perkRecipent.addPerk(perksToAdd[cntr])
		cntr += 1
		
	endWhile
	
	if(showNotification)
		debug.notification(notificationText)
	endIf

EndEvent


