Scriptname BbaronxScriptLibrary:Bbaronx_AddSpellsOnStart extends Quest  
{Adds specified Spells on start}

Spell[] Property varSpells Auto Const Mandatory
{Spells to give to specified Actor}

Actor Property perkRecipent Auto Const Mandatory
{Who you're giving the spells to.}

Bool Property showNotification = False Auto Const
{true if should show notification to player, default is false}

String Property notificationText = "Some Mod Using Bbaronx's AddSpellssOnStart Script Initilized" Auto Const
{Notification text to be shown if showNotification is true}

;Runcode
Event OnInit()
	
	int cntr = 0
	while(cntr < varSpells.length)
		
		perkRecipent.addSpell(varSpells[cntr])
		cntr += 1
		
	endWhile
	
	if(showNotification)
		debug.notification(notificationText)
	endIf
endEvent