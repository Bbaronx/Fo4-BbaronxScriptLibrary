Scriptname BbaronxScriptLibrary:Bbaronx_IncrementGlobal extends activemagiceffect  
{Increments a global}

GlobalVariable Property varGlobal  Auto  
{Global to increment}

Int Property varAmount = 1 Auto  
{Amount to increment by, DEFAULT == 1}

bool Property varDebugMode = false Auto
{Show notifications, DEFAULT == false}

String Property varText = "~" Auto
{Text to show for debug mode should be variable name usually, DEFAULT == "~"}

Event OnInit()
	if(varDebugMode)
		Debug.Notification(varText + " " + varGlobal.getValue())
		varGlobal.SetValue(varGlobal.getValue() + varAmount)
		Debug.Notification("new value " + varText + " " + varGlobal.getValue())
	
	else
		varGlobal.SetValue(varGlobal.getValue() + varAmount)
	endIf
endEvent