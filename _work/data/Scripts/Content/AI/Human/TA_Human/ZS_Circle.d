// ************************************
// ZS_Circle f�r Auge Innos Beschw�rung
// ************************************


func void ZS_Circle	() 	
{
	Perception_Set_Normal();
	
	B_ResetAll (self);
	
	// ------ PercTime �berschreiben ------
	Npc_SetPercTime		(self, 0.3);
	
	
	AI_StandUp		(self);				
	AI_SetWalkmode 	(self,NPC_WALK);			// Walkmode f�r den Zustand
	AI_GotoWP		(self, self.wp);			// Gehe zum Tagesablaufstart
	AI_AlignToWP	(self);
};

func int ZS_Circle_Loop ()
{
	
	
	return LOOP_CONTINUE;
};

func void ZS_Circle_End ()
{

};
