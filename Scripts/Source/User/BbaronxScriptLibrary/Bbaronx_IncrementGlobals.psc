Scriptname BbaronxScriptLibrary:Bbaronx_IncrementGlobals extends activemagiceffect  
{Increments the specified global(s) by the specified amount(s) when spell fires}

GlobalVariable[] Property varGlobal  Auto Const Mandatory
{Global to increment}

Int[] Property varAmount Auto Const Mandatory
{amount to increment globals by, 1st global incremented by 1st value, 2nd by 2nd, ext. If more 
globals than defined amounds, last variable in array will be used for remaining globals}

Bool Property showNotification = False Auto Const
{true if should show debug notifications for the old and new values for the globals, default is false}

String Property notificationText = "Global Value:" Auto Const
{Notification text to be shown if showNotification is true, do NOT need a space at the end, that's added for you}

Event OnInit()
	int[] cntr = new int[2]
	cntr[0] = 0
	cntr[1] = 0
	while(cntr[0] < varGlobal.length)
		
		if(showNotification)
			Debug.Notification(notificationText + " " + varGlobal[cntr[0]].getValue())
			varGlobal[cntr[0]].SetValue(varGlobal[cntr[0]].getValue() + varAmount[cntr[1]])
			Debug.Notification("new value " + notificationText + " " + varGlobal[cntr[0]].getValue())
		
		else
			varGlobal[cntr[0]].SetValue(varGlobal[cntr[0]].getValue() + varAmount[cntr[1]])
		endIf
		
		cntr[0] = cntr[0] + 1
		
		if(cntr[1] < varAmount.length)
			cntr[1] = cntr[1] + 1
		endIf
	endWhile
endEvent
