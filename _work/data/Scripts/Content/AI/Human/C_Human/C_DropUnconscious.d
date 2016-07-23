// **************************************************************
// C_DropUnconscious
// -----------------
// self und other hier vom Programm initialisiert:
// self ist immer der NPC, für den diese Funktion den Check macht
// other ist immer der Täter (der den Treffer gelandet hat)
// **************************************************************

func int C_DropUnconscious()
{
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		return TRUE;
	};
	
	return FALSE;
};


