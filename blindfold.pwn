#include <a_samp>
#include <zcmd>
#include <sscanf2>

new Text:Blind, Text:Blind2;
public OnFilterScriptInit()
{
	Blind = TextDrawCreate(641.199951, 1.500000, "anything");
	TextDrawLetterSize(Blind, 0.000000, 49.378147);
	TextDrawAlignment(Blind, 3);
	TextDrawUseBox(Blind, true);
	TextDrawBoxColor(Blind, 255);
	
	
	Blind2 = TextDrawCreate(641.199951, 1.500000, "anything");
	TextDrawLetterSize(Blind2, 0.000000, 49.378147);
	TextDrawAlignment(Blind2, 3);
	TextDrawUseBox(Blind2, true);
	TextDrawBoxColor(Blind2, 0x2F221AFF);
	return 1;
}

CMD:screen(playerid,params[])
{
	new option;
	if(sscanf(params, "d", option))
	{
		SendClientMessage(playerid, 0x8CAA63FF, "SYNTAX: {FFFFFF}/screen 1-2");
		SendClientMessage(playerid, 0x8CAA63FF, "DESCRIPTION: {FFFFFF}Used to fill the whole screen with a the same color");
		return SendClientMessage(playerid, 0x8CAA63FF, "DESCRIPTION: {FFFFFF}0 to disable, 1 for black, 2 for brown.");
	}

	switch(option)
	{
		case 0:
		{
			TextDrawHideForPlayer(playerid, Blind);
			TextDrawHideForPlayer(playerid, Blind2);
		}
		case 1: TextDrawShowForPlayer(playerid, Blind);
		case 2: TextDrawShowForPlayer(playerid, Blind2);
		default: SendClientMessage(playerid, 0xDE3838FF, "ERROR: {FFFFFF}Invalid option!");
	}
	return 1;
}

