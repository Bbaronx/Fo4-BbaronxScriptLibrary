Scriptname BbaronxScriptLibrary:Bbaronx_AddMiscItemsOnStart extends Quest  
{Adds specified MiscObject(s) on start}

MiscObject[] Property varMiscObjects Auto Const Mandatory
{MiscObjects to give to specified Actor}

Int[] Property varCount Auto Const Mandatory
{Count of item to add to perkRecipent, first count is for first item, second for second, ext, if more items than defined the last count is given for remaining items}


Actor Property perkRecipent Auto Const Mandatory
{Who you're giving the MiscObjects to.}

Bool Property DoNotNotify = True Auto Const
{false if should show notification to player, default is True}

;Runcode
Event OnInit()

	int[] cntr = new Int[2]
	cntr[0] = 0
	cntr[1] = 0
	while(cntr[0] < varMiscObjects.length)
		
		perkRecipent.addItem(varMiscObjects[cntr[0]], varCount[cntr[1]], DoNotNotify)
		cntr[0] = cntr[0] + 1
		
		if(cntr[1] < varCount.length)
			cntr[1] = cntr[1] + 1
		endIf
	endWhile
endEvent