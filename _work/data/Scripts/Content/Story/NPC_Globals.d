var C_NPC Magier;
var C_NPC Bogenschuetze;
var C_NPC Zweihandkaempfer;
var C_NPC Einhandkaempfer;

func void  B_InitNpcGlobals ()
{
 	Magier = Hlp_GetNpc(Char_Magie);
 	Bogenschuetze = Hlp_GetNpc(Char_Bogen);
 	Zweihandkaempfer = Hlp_GetNpc(Char_Zweihand);
 	Einhandkaempfer = Hlp_GetNpc(Char_Einhand);	 
};
