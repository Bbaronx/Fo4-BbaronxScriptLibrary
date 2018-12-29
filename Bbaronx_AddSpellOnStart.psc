Scriptname BbaronxScriptLibrary:Bbaronx_AddSpellOnStart extends Quest  
{Adds specified spell on start}

SPELL Property varSpell auto
{Spell to give to specified Actor}

Actor Property perkRecipent Auto Const
{Who you're giving the perk to.}

Bool Property showNotification = False Auto Const
{true if should show notification to player}

String Property notificationText = "Some Mod Using Bbaronx's AddSpellOnStart Script Initilized" Auto Const
{Notification text if showNotification = True}

;Runcode
Event OnInit()
	
	perkRecipent.addspell(varSpell)
	
	if(showNotification)
		debug.notification(notificationText)
	endIf

endEvent