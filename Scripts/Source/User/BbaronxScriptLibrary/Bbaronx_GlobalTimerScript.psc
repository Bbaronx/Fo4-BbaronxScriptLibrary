Scriptname BbaronxScriptLibrary:Bbaronx_GlobalTimerScript extends Quest
{fires off a timer every hour. Used in combination with the global GameHour to fire off different intervals, this can be copied and used for more refined timers inside your own scripts}

GlobalVariable Property GameHour Auto Const
{needs to be the GameHour global}

CustomEvent oneHTimer
CustomEvent twelveHTimer
CustomEvent twentyFourHTimer

Event OnInit()
	;Sets the time to midnight
	float tmp = Math.floor(GameHour.getValue())
	GameHour.setValue(0)
	StartTimerGameTime(1, 0)
	;If you're wondering, yes, you can import the script name there and just call roundAZ(~) but I didn't because it's only called once.
	GameHour.setValue(BbaronxScriptLibrary:Bbaronx_Util.roundAZ(tmp))
	debug.notification("GlobalTimerScript initilized")
EndEvent

Event OnTimerGameTime(int tmer)
;	debug.notification("1 hour timer")
	int currentHour = Math.floor(GameHour.getValue())
	sendCustomEvent("oneHTimer")
	if(currentHour % 12 == 0)
;		debug.notification("12 hour timer")
		sendCustomEvent("twelveHTimer")
	endIf
	if(currentHour % 24 == 0)
;		debug.notification("24 hour timer")
		sendCustomEvent("twentyFourHTimer")
		GameHour.setValue(0)
	endIf
	StartTimerGameTime(1, 0)
EndEvent