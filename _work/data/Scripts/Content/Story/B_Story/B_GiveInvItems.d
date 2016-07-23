// *****************************************************************
// B_GiveInvItems
// --------------
// wenn das Geben geklappt hat --> TRUE
// wenn nicht (Spieler hat nicht genug oder gar kein Item) --> FALSE
// *****************************************************************

func int B_GiveInvItems (var C_NPC giver, var C_NPC taker, var int itemInstance, var int amount)
{
	//FUNC
	
	// ------ Itmes transferieren ------
	Npc_RemoveInvItems	(giver,	itemInstance,	amount);
	CreateInvItems		(taker,	itemInstance,	amount);
	
	// ------ PrintScreen ------
	var string concatText;
	var string itemname;
	
	itemname = item.name; //wird von CreateInvItems gesetzt --> Nico

	if (Hlp_IsItem(item, ItPo_Health) == TRUE)
	{
		if (Npc_IsPlayer(giver))
		{
			concatText = ConcatStrings("Du hast ", taker.name);
			concatText = ConcatStrings(concatText, " einen Heiltrank gegeben");

		}
		else if (Npc_IsPlayer(taker))
		{
			concatText = ConcatStrings("Du hast von ", giver.name);
			concatText = ConcatStrings(concatText, " einen Heiltrank bekommen");

		}
		else
		{
			concatText = ConcatStrings(giver.name, " hat ");
			concatText = ConcatStrings(concatText, taker.name);
			concatText = ConcatStrings(concatText, " einen Heiltrank gegeben");

		};

		B_Say_Overlay	(giver, taker, "$HIERTRANK");
	};
	
	AI_PrintScreen	(concatText, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);	
	
	return TRUE;
};
