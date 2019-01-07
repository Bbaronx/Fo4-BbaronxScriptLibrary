Scriptname BbaronxScriptLibrary:Bbaronx_AddAnyOnStart extends Quest  
{Adds specified stuff on start, the more specific scripts are more efficient, but this one consolidates what would be multiple scripts otherwise}

Ammo[] Property varAmmo Auto Const
{ammo to add}
Armor[] Property varArmor Auto Const
{armor to add}
Book[] Property varBooks Auto Const
{books to add}
MiscObject[] Property varMiscObject Auto Const
{misc to add}
Spell[] Property varSpells Auto Const
{Spells to add}
Perk[] Property varPerks Auto Const
{Perks to add}
Weapon[] Property varWeapons Auto Const
{weapons to add}

Actor Property recipent Auto Const Mandatory
{Who you're giving the spells to.}

Bool Property showNotification = False Auto Const
{true if should show notification to player, default is false}

String Property notificationText = "Some Mod Using Bbaronx's AddSpellssOnStart Script Initilized" Auto Const
{Notification text to be shown if showNotification is true}

;Runcode
Event OnInit()
	
	int cntr = 0
	while(cntr < varSpells.length)
		
		recipent.addSpell(varSpells[cntr])
		cntr += 1
		
	endWhile
	
	cntr = 0
	while(cntr < varPerks.length)
		
		recipent.addPerk(varPerks[cntr])
		cntr += 1
		
	endWhile
	
	cntr = 0
	while(cntr < varAmmo.length)
		
		recipent.addItem(varAmmo[cntr], 1)
		cntr += 1
		
	endWhile
	
	cntr = 0
	while(cntr < varArmor.length)
		
		recipent.addItem(varArmor[cntr], 1)
		cntr += 1
		
	endWhile
	
	cntr = 0
	while(cntr < varBooks.length)
		
		recipent.addItem(varBooks[cntr], 1)
		cntr += 1
		
	endWhile
	
	cntr = 0
	while(cntr < varMiscObject.length)
		
		recipent.addItem(varMiscObject[cntr], 1)
		cntr += 1
		
	endWhile
	
	cntr = 0
	
	cntr = 0
	while(cntr < varWeapons.length)
		
		recipent.addItem(varWeapons[cntr], 1)
		cntr += 1
		
	endWhile
	
	if(showNotification)
		debug.notification(notificationText)
	endIf
endEvent