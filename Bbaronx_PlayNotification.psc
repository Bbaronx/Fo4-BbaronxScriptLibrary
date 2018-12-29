Scriptname BbaronxScriptLibrary:Bbaronx_PlayNotification extends Quest
{Plays notification on quest start}

Event OnInit()

	debug.MessageBox(NotificationText)

EndEvent

String Property NotificationText Auto Const
{Text for the notification}
