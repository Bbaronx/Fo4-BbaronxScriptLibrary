Scriptname BbaronxScriptLibrary:Bbaronx_Util
{Utility script: rounding functions}

;ROUNDING FUNCTIONS - Note: these functions are still subject to any errors Bethesda may have in Papyrus, and I may have goofed and not noticed, at any rate, tell me if there's any simple rounding issues and I'll try and fix it.
;I reccomend you just make a function named round in your script and pick one of these to use in it. Will save so much typing.

;rounds a number to nearest whole, rounding havles absolutely up (1.5 to 2, -1.5 to -1)
int Function roundUp(float toRound) Global
	if(toRound > 0)
		return roundAZ(toRound)
	else
		return roundTZ(toRound)
	endIf
endFunction

;rounds a number to nearest whole, rounding halves absolutely down (1.5 to 1, -1.5 to -2)
int Function roundDown(float toRound) Global
	if(toRound > 0)
		return roundTZ(toRound)
	else
		return roundAZ(toRound)
	endIf
endFunction

;Rounds a number to nearest whole, rounding halves away from zero (1.5 to 2, -1.5 to -2)
int Function roundAZ(float toRound) Global
	float rounded = Math.abs(remainder(toRound))
	int rtrnVal = 0
	if(rounded >= 0.5)
		rtrnVal = Math.ceiling(Math.abs(toRound))
	else
		rtrnVal = Math.floor(Math.abs(toRound))
	endIf
	if(toRound < 0)
		rtrnVal = 0 - rtrnVal
	endIf
	return rtrnVal
EndFunction

;Rounds a number to nearest whole, rounding halves toward zero (1.5 to 1, -1.5 to -1)
int Function roundTZ(float toRound) Global
	float rounded = Math.abs(remainder(toRound))
	int rtrnVal = 0
	if(rounded > 0.5)
		rtrnVal = Math.ceiling(Math.abs(toRound))
	else
		rtrnVal = Math.floor(Math.abs(toRound))
	endIf
	if(toRound < 0)
		rtrnVal = 0 - rtrnVal
	endIf
	return rtrnVal
endFunction

;END ROUNDING FUNCTIONS

;GENERAL FUNCTIONS

;returns the remainder of the number, preserving sign.
float Function remainder(float toGet) Global
	float newNum = math.abs(toGet) - math.floor(math.abs(toGet))
	if(toGet > 0)
		newNum = 0 - newNum
	endIf
	return newNum
endFunction
;END GENERAL FUNCTIONS