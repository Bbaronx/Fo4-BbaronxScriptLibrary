Scriptname BbaronxScriptLibrary:Bbaronx_PlayTextBox extends Quest
{Plays text on quest start}

Event OnInit()

	debug.MessageBox(TextboxText)

EndEvent

String Property TextboxText Auto Const
{Text for the textbox}
