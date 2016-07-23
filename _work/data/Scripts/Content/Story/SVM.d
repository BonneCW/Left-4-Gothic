// *********************
// Standard	Voice Module
// *********************

CLASS C_SVM
{
	// Kommentar, wenn er Trank übergibt

	var string HIERTRANK;	

	// Kommentar, wenn Bossmonster entdeckt wird

	var string BOSSTANK;
	var string BOSSBOOMER;
	var string BOSSWITCH;
	var string BOSSHUNTER;
	var string BOSSHORDENFUEHRER;
	var string BOSSSMOKER;
	var string BOSSSPITTER;

	// Kommentar, wenn man fünf Minuten rumsteht

	var string STANDING;	

	// Kommentar, wenn man wiederbelebt wurde

	var string WIEDERBELEBT;

	// Kommentar, wenn man nach 20 Sekunden noch nicht wiederbelebt wurde

	var string HELFTENDLICH01;
	var string HELFTENDLICH02;	

	// Kommentar, warum kein Trank gegeben werden kann

	var string CANTGIVEPOTIONATTACK;
	var string CANTGIVEPOTIONPOTION;
	var string CANTGIVEPOTIONOTHERONE;
	var string CANTGIVEPOTIONDONTHAVEPOTION;
	var string CANTGIVEPOTIONHASPOTION;
	var string CANTGIVEPOTIONHASHP;
	var string CANTGIVEPOTIONTOOFAR;

	// Kommentar, wenn man einen Boss getötet hat

	var string KILLEDBOSS01;
	var string KILLEDBOSS02;

	// Kommentar, wenn man zu viele Heiltränke hat

	var string TOOMUCHPOTIONHEALTH;

	// Kommentar, wenn man Köcher genommen hat

	var string TOOKKOECHER;

	// Kommentar, wenn man Primärwaffe genommen hat

	var string TOOKFIRSTWEAPON;

	// Kommentar, wenn man Sekundärrwaffe genommen hat

	var string TOOKSECONDWEAPON;

	// Kommentar, wenn man die Waffe eines Kameraden entdeckt

	var string FIRSTWEAPONFORLESTER;
	var string FIRSTWEAPONFORGORN;
	var string FIRSTWEAPONFORDIEGO;
	var string FIRSTWEAPONFORMILTEN;
	var string SECONDWEAPONFORDIEGO;
	var string SECONDWEAPONFORMILTEN;

	// Kommentar, wenn nichts vor sich geht

	var string AMBIENTTALK01;
	var string AMBIENTTALK02;
	var string AMBIENTTALK03;
	var string AMBIENTTALK04;
	var string AMBIENTTALK05;

	// Kommentar, wenn falsche Waffe eingesammelt

	var string NOTMYWEAPON;

	// Kommentar, wenn NPC Hero rettet aus Zelle

	var string RETTUNG;

	// Trank trinken lassen

	var string TRINKTRANK01;
	var string TRINKTRANK02;

	// Aus Knast befreien

	var string ZELLE01;
	var string ZELLE02;

	// Folge mir

	var string FOLLOWME01;
	var string FOLLOWME02;

	// Warte hier

	var string WAITHERE01;
	var string WAITHERE02;

	// Milten kein Skelett mehr

	var string MILTENSKELETT01;

	// Milten doch Skelett

	var string MILTENSKELETT02;
};     


// **********************************
// NSCs
// ----
// SVMs müssen immer "SVM_x" heissen, 
// wobei x die VoiceNummer ist.	
// **********************************

// ------ wird nur intern gebraucht! ------
instance SVM_0 (C_SVM)				
{

};

instance SVM_1 (C_SVM)
{
	
};

INSTANCE SVM_2	(C_SVM)	
{
	//leer
};

// Milten

instance SVM_3 (C_SVM)
{
	// Kommentar, wenn er Trank übergibt

	HIERTRANK	=	"SVM_03_HIERTRANK";	//Hier hast du einen Trank.

	// Kommentar, wenn Bossmonster entdeckt wird

	BOSSTANK	=	"SVM_03_BOSSTANK";	//Vorsicht, da ist ein Tank!
	BOSSBOOMER	=	"SVM_03_BOSSBOOMER";	//Achtung, Boomer!
	BOSSWITCH	=	"SVM_03_BOSSWITCH";	//Ganz leise, da ist eine Witch.
	BOSSHUNTER	=	"SVM_03_BOSSHUNTER";	//Hunter!
	BOSSHORDENFUEHRER	=	"SVM_03_BOSSHORDENFUEHRER";	//Da ist ein Hordenführer!
	BOSSSMOKER	=	"SVM_03_BOSSSMOKER";	//Smoker!
	BOSSSPITTER	=	"SVM_03_BOSSSPITTER";	//Vorsicht, Spitter!

	// Kommentar, wenn man fünf Minuten rumsteht

	STANDING	=	"SVM_03_STANDING";	//Sollten wir nicht mal weitergehen?

	// Kommentar, wenn man wiederbelebt wurde

	WIEDERBELEBT	=	"SVM_03_WIEDERBELEBT";	//Danke Mann!

	// Kommentar, wenn man nach 20 Sekunden noch nicht wiederbelebt wurde

	HELFTENDLICH01	=	"SVM_03_HELFTENDLICH01";	//Ich bräuchte hier Hilfe.
	HELFTENDLICH02	=	"SVM_03_HELFTENDLICH02";	//Ahh ... diese Schmerzen ...

	// Kommentar, warum kein Trank gegeben werden kann

	CANTGIVEPOTIONATTACK	=	"SVM_03_CANTGIVEPOTIONATTACK";	//Wenn er kämpft, kann ich ihm keinen Trank geben.
	CANTGIVEPOTIONPOTION	=	"SVM_03_CANTGIVEPOTIONPOTION";	//Er trinkt gerade schon einen Trank.
	CANTGIVEPOTIONOTHERONE	=	"SVM_03_CANTGIVEPOTIONOTHERONE";	//Einer von den anderen will ihm schon einen Trank geben.
	CANTGIVEPOTIONDONTHAVEPOTION	=	"SVM_03_CANTGIVEPOTIONDONTHAVEPOTION";	//Ich habe keinen Trank mehr, den ich ihm geben könnte.
	CANTGIVEPOTIONHASPOTION	=	"SVM_03_CANTGIVEPOTIONHASPOTION";	//Er hat noch einen Trank, da braucht er meinen nicht.
	CANTGIVEPOTIONHASHP	=	"SVM_03_CANTGIVEPOTIONHASHP";	//Er ist noch fit genug, da wird er noch keinen Trank brauchen.
	CANTGIVEPOTIONTOOFAR	=	"SVM_03_CANTGIVEPOTIONTOOFAR";	//Ich müsste noch ein Stück näher ran.

	// Kommentar, wenn man einen Boss getötet hat

	KILLEDBOSS01	=	"SVM_03_KILLEDBOSS01";	//Ha, dem hab ich's gezeigt!
	KILLEDBOSS02	=	"SVM_03_KILLEDBOSS02";	//Der steht nicht mehr auf.

	// Kommentar, wenn man zu viele Heiltränke hat

	TOOMUCHPOTIONHEALTH	=	"SVM_03_TOOMUCHPOTIONHEALTH";	//Ich lege den Trank besser wieder weg, einer reicht.

	// Kommentar, wenn man Köcher genommen hat

	TOOKKOECHER	=	"SVM_03_TOOKKOECHER";	//Ein Köcher? Was soll ich als Magier denn damit?

	// Kommentar, wenn man Primärwaffe genommen hat

	TOOKFIRSTWEAPON	=	"SVM_03_TOOKFIRSTWEAPON";	//Ein neuer Zauber ...

	// Kommentar, wenn man Sekundärrwaffe genommen hat

	TOOKSECONDWEAPON	=	"SVM_03_TOOKSECONDWEAPON";	//Ein neuer Stab ... wurde auch Zeit.

	// Kommentar, wenn man die Waffe eines Kameraden entdeckt

	FIRSTWEAPONFORLESTER	=	"SVM_03_FIRSTWEAPONFORLESTER";	//Hier liegt ein Schwert für dich, Lester!
	FIRSTWEAPONFORGORN	=	"SVM_03_FIRSTWEAPONFORGORN";	//Hier ist eine Axt für dich, Gorn!
	FIRSTWEAPONFORDIEGO	=	"SVM_03_FIRSTWEAPONFORDIEGO";	//Hier liegt ein Bogen für dich, Diego!
	SECONDWEAPONFORDIEGO	=	"SVM_03_SECONDWEAPONFORDIEGO";	//Hier liegt ein Schwert für dich, Diego!

	// Kommentar, wenn nichts vor sich geht

	AMBIENTTALK01	=	"SVM_03_AMBIENTTALK01";	//Ich glaube, ich habe da was gehört ...
	AMBIENTTALK02	=	"SVM_03_AMBIENTTALK02";	//(gähnt) Ich bin müde ...
	AMBIENTTALK03	=	"SVM_03_AMBIENTTALK03";	//Man sollte nicht mit Feuer spielen ...
	AMBIENTTALK04	=	"SVM_03_AMBIENTTALK04";	//Jetzt ist tatsächlich meine Robe schmutzig geworden ...
	AMBIENTTALK05	=	"SVM_03_AMBIENTTALK05";	//Hat mal wer Feuer ...?

	// Kommentar, wenn falsche Waffe eingesammelt

	NOTMYWEAPON	=	"SVM_03_NOTMYWEAPON";	//Damit kann ich nicht umgehen ...

	// Kommentar, wenn NPC Hero rettet aus Zelle

	RETTUNG		=	"SVM_03_RETTUNG";	//Kannst wieder mitkommen.

	// Trank trinken lassen

	TRINKTRANK01	=	"SVM_03_TRINKTRANK01";	//Du solltest deinen Trank jetzt schon trinken.
	TRINKTRANK02	=	"SVM_03_TRINKTRANK02";	//Ja, ich glaube du hast recht.

	// Aus Knast befreien

	ZELLE01		=	"SVM_03_ZELLE01";	//Du bist frei.
	ZELLE02		=	"SVM_03_ZELLE02";	//Endlich bist du da.

	// Folge mir

	FOLLOWME01	=	"SVM_03_FOLLOWME01";	//Folge mir.
	FOLLOWME02	=	"SVM_03_FOLLOWME02";	//Alles klar.

	// Warte hier

	WAITHERE01	=	"SVM_03_WAITHERE01";	//Bleib kurz hier.
	WAITHERE02	=	"SVM_03_WAITHERE02";	//Alles klar.

	// Milten kein Skelett mehr

	MILTENSKELETT01	=	"SVM_03_MILTENSKELETT01";	//Na gut, wie du meinst.

	// Milten doch Skelett

	MILTENSKELETT02	=	"SVM_03_MILTENSKELETT02";	//Gut, ich werde eines beschwören.
};

instance SVM_4 (C_SVM)
{
	
};

instance SVM_5 (C_SVM)
{
	
};


instance SVM_6 (C_SVM)
{
	
};

instance SVM_7 (C_SVM)
{
	
};

instance SVM_8 (C_SVM)
{
	
};

instance SVM_9 (C_SVM)
{
	
};

instance SVM_10 (C_SVM)
{
	
};

// Diego

instance SVM_11 (C_SVM)
{
	// Kommentar, wenn er Trank übergibt

	HIERTRANK	=	"SVM_11_HIERTRANK";	//Du solltest das trinken.

	// Kommentar, wenn Bossmonster entdeckt wird

	BOSSTANK	=	"SVM_11_BOSSTANK";	//Da ist ein Tank!
	BOSSBOOMER	=	"SVM_11_BOSSBOOMER";	//Ein Boomer!
	BOSSWITCH	=	"SVM_11_BOSSWITCH";	//Vorsicht, eine Witch.
	BOSSHUNTER	=	"SVM_11_BOSSHUNTER";	//Mist, ein Hunter!
	BOSSHORDENFUEHRER	=	"SVM_11_BOSSHORDENFUEHRER";	//Hordenführer!
	BOSSSMOKER	=	"SVM_11_BOSSSMOKER";	//Achtung, ein Smoker!
	BOSSSPITTER	=	"SVM_11_BOSSSPITTER";	//Spitter!

	// Kommentar, wenn man fünf Minuten rumsteht

	STANDING	=	"SVM_11_STANDING";	//Lasst uns endlich weitergehen.

	// Kommentar, wenn man wiederbelebt wurde

	WIEDERBELEBT	=	"SVM_11_WIEDERBELEBT";	//Das war knapp.

	// Kommentar, wenn man nach 20 Sekunden noch nicht wiederbelebt wurde

	HELFTENDLICH01	=	"SVM_11_HELFTENDLICH01";	//Kann mir mal einer helfen?	
	HELFTENDLICH02	=	"SVM_11_HELFTENDLICH02";	//Verdammt, tut das weh ...	

	// Kommentar, warum kein Trank gegeben werden kann

	CANTGIVEPOTIONATTACK	=	"SVM_11_CANTGIVEPOTIONATTACK";	//Wenn er kämpft, kann ich ihm keinen Trank geben.
	CANTGIVEPOTIONPOTION	=	"SVM_11_CANTGIVEPOTIONPOTION";	//Er trinkt gerade schon einen Trank.
	CANTGIVEPOTIONOTHERONE	=	"SVM_11_CANTGIVEPOTIONOTHERONE";	//Einer von den anderen will ihm schon einen Trank geben.
	CANTGIVEPOTIONDONTHAVEPOTION	=	"SVM_11_CANTGIVEPOTIONDONTHAVEPOTION";	//Ich habe keinen Trank mehr, den ich ihm geben könnte.
	CANTGIVEPOTIONHASPOTION	=	"SVM_11_CANTGIVEPOTIONHASPOTION";	//Er hat noch einen Trank, da braucht er meinen nicht.
	CANTGIVEPOTIONHASHP	=	"SVM_11_CANTGIVEPOTIONHASHP";	//Er ist noch fit genug, da wird er noch keinen Trank brauchen.
	CANTGIVEPOTIONTOOFAR	=	"SVM_11_CANTGIVEPOTIONTOOFAR";	//Ich müsste noch ein Stück näher ran.

	// Kommentar, wenn man einen Boss getötet hat

	KILLEDBOSS01	=	"SVM_11_KILLEDBOSS01";	//Ha, dem hab ich's gezeigt!
	KILLEDBOSS02	=	"SVM_11_KILLEDBOSS02";	//Der steht nicht mehr auf.

	// Kommentar, wenn man zu viele Heiltränke hat

	TOOMUCHPOTIONHEALTH	=	"SVM_11_TOOMUCHPOTIONHEALTH";	//Ich brauche erstmal keinen neuen Trank.

	// Kommentar, wenn man Köcher genommen hat

	TOOKKOECHER	=	"SVM_11_TOOKKOECHER";	//Ah, neue Pfeile.

	// Kommentar, wenn man Primärwaffe genommen hat

	TOOKFIRSTWEAPON	=	"SVM_11_TOOKFIRSTWEAPON";	//Endlich ein neuer Bogen ...

	// Kommentar, wenn man Sekundärrwaffe genommen hat

	TOOKSECONDWEAPON	=	"SVM_11_TOOKSECONDWEAPON";	//Ein neues Schwert ... könnte nützlich sein.

	// Kommentar, wenn man die Waffe eines Kameraden entdeckt

	FIRSTWEAPONFORLESTER	=	"SVM_11_FIRSTWEAPONFORLESTER";	//Hier liegt ein Schwert für dich, Lester!
	FIRSTWEAPONFORGORN	=	"SVM_11_FIRSTWEAPONFORGORN";	//Gorn, hier liegt eine Axt für dich.
	FIRSTWEAPONFORMILTEN	=	"SVM_11_FIRSTWEAPONFORMILTEN";	//Da ist eine Rune, Milten.
	SECONDWEAPONFORMILTEN	=	"SVM_11_SECONDWEAPONFORMILTEN";	//Ein Stab. Milten, der ist für dich.

	// Kommentar, wenn nichts vor sich geht

	AMBIENTTALK01	=	"SVM_11_AMBIENTTALK01";	//Bleibt wachsam ...
	AMBIENTTALK02	=	"SVM_11_AMBIENTTALK02";	//Ziemlich ruhig hier ...
	AMBIENTTALK03	=	"SVM_11_AMBIENTTALK03";	//Diese Infizierten sind verdammt schwach ...
	AMBIENTTALK04	=	"SVM_11_AMBIENTTALK04";	//Ich könnte mal wieder ein wenig Gold gebrauchen ...
	AMBIENTTALK05	=	"SVM_11_AMBIENTTALK05";	//Ein neuer Tag und nichts hat sich geändert ...

	// Kommentar, wenn falsche Waffe eingesammelt

	NOTMYWEAPON	=	"SVM_11_NOTMYWEAPON";	//Das ist nichts für mich ...

	// Kommentar, wenn NPC Hero rettet aus Zelle

	RETTUNG		=	"SVM_11_RETTUNG";	//Komm mit ... leise.

	// Trank trinken lassen

	TRINKTRANK01	=	"SVM_11_TRINKTRANK01";	//Trink besser gleich deinen Trank.
	TRINKTRANK02	=	"SVM_11_TRINKTRANK02";	//Gut, ich werde ihn trinken.

	// Aus Knast befreien

	ZELLE01		=	"SVM_11_ZELLE01";	//Komm raus da.
	ZELLE02		=	"SVM_11_ZELLE02";	//Gut gemacht.

	// Folge mir

	FOLLOWME01	=	"SVM_11_FOLLOWME01";	//Es geht weiter.
	FOLLOWME02	=	"SVM_11_FOLLOWME02";	//Gut, ich folge dir.

	// Warte hier

	WAITHERE01	=	"SVM_11_WAITHERE01";	//Warte hier.
	WAITHERE02	=	"SVM_11_WAITHERE02";	//Gut, ich warte hier ...

	// Milten kein Skelett mehr

	MILTENSKELETT01	=	"SVM_11_MILTENSKELETT01";	//Du solltest dein Mana nicht für das Skelett verschwenden.

	// Milten doch Skelett

	MILTENSKELETT02	=	"SVM_11_MILTENSKELETT02";	//Ein Skelett zur Unterstützung kann nicht schaden.
};

// Gorn

instance SVM_12 (C_SVM)
{
	// Kommentar, wenn er Trank übergibt

	HIERTRANK	=	"SVM_12_HIERTRANK";	//Hier, ein Trank.

	// Kommentar, wenn Bossmonster entdeckt wird

	BOSSTANK	=	"SVM_12_BOSSTANK";	//Scheiße, ein Tank!
	BOSSBOOMER	=	"SVM_12_BOSSBOOMER";	//Mist, ein Boomer!
	BOSSWITCH	=	"SVM_12_BOSSWITCH";	//Ah, eine Witch!
	BOSSHUNTER	=	"SVM_12_BOSSHUNTER";	//Ein Hunter? Der gehört mir!
	BOSSHORDENFUEHRER	=	"SVM_12_BOSSHORDENFUEHRER";	//Hm ... ein Hordenführer.
	BOSSSMOKER	=	"SVM_12_BOSSSMOKER";	//Ein Smoker!
	BOSSSPITTER	=	"SVM_12_BOSSSPITTER";	//Da ist ein Spitter!

	// Kommentar, wenn man fünf Minuten rumsteht

	STANDING	=	"SVM_12_STANDING";	//Mir ist langweilig.

	// Kommentar, wenn man wiederbelebt wurde

	WIEDERBELEBT	=	"SVM_12_WIEDERBELEBT";	//scheiße, mein Schädel!

	// Kommentar, wenn man nach 20 Sekunden noch nicht wiederbelebt wurde

	HELFTENDLICH01	=	"SVM_12_HELFTENDLICH01";	//Helft mir, verdammt!	
	HELFTENDLICH02	=	"SVM_12_HELFTENDLICH02";	//Scheiße, ich brauche Hilfe ...	

	// Kommentar, warum kein Trank gegeben werden kann

	CANTGIVEPOTIONATTACK	=	"SVM_12_CANTGIVEPOTIONATTACK";	//Wenn er kämpft, kann ich ihm keinen Trank geben.
	CANTGIVEPOTIONPOTION	=	"SVM_12_CANTGIVEPOTIONPOTION";	//Er trinkt gerade schon einen Trank.
	CANTGIVEPOTIONOTHERONE	=	"SVM_12_CANTGIVEPOTIONOTHERONE";	//Einer von den anderen will ihm schon einen Trank geben.
	CANTGIVEPOTIONDONTHAVEPOTION	=	"SVM_12_CANTGIVEPOTIONDONTHAVEPOTION";	//Ich habe keinen Trank mehr, den ich ihm geben könnte.
	CANTGIVEPOTIONHASPOTION	=	"SVM_12_CANTGIVEPOTIONHASPOTION";	//Er hat noch einen Trank, da braucht er meinen nicht.
	CANTGIVEPOTIONHASHP	=	"SVM_12_CANTGIVEPOTIONHASHP";	//Er ist noch fit genug, da wird er noch keinen Trank brauchen.
	CANTGIVEPOTIONTOOFAR	=	"SVM_12_CANTGIVEPOTIONTOOFAR";	//Ich müsste noch ein Stück näher ran.

	// Kommentar, wenn man einen Boss getötet hat

	KILLEDBOSS01	=	"SVM_12_KILLEDBOSS01";	//Ha, dem hab ich's gezeigt!
	KILLEDBOSS02	=	"SVM_12_KILLEDBOSS02";	//Der steht nicht mehr auf.

	// Kommentar, wenn man zu viele Heiltränke hat

	TOOMUCHPOTIONHEALTH	=	"SVM_12_TOOMUCHPOTIONHEALTH";	//Was will ich denn mit noch einem Trank?

	// Kommentar, wenn man Köcher genommen hat

	TOOKKOECHER	=	"SVM_12_TOOKKOECHER";	//Die Pfeile lass ich lieber Diego, der hat wenigstens einen Bogen.

	// Kommentar, wenn man Primärwaffe genommen hat

	TOOKFIRSTWEAPON	=	"SVM_12_TOOKFIRSTWEAPON";	//Ah, eine neue Axt ...

	// Kommentar, wenn man die Waffe eines Kameraden entdeckt

	FIRSTWEAPONFORLESTER	=	"SVM_12_FIRSTWEAPONFORLESTER";	//Lester, ich glaub das Ding ist für dich.
	FIRSTWEAPONFORDIEGO	=	"SVM_12_FIRSTWEAPONFORDIEGO";	//Hier liegt ein Bogen für dich, Diego!
	FIRSTWEAPONFORMILTEN	=	"SVM_12_FIRSTWEAPONFORMILTEN";	//Da liegt eine Rune, Milten.
	SECONDWEAPONFORDIEGO	=	"SVM_12_SECONDWEAPONFORDIEGO";	//Der Zahnstocher dürfte für dich sein, Diego.
	SECONDWEAPONFORMILTEN	=	"SVM_12_SECONDWEAPONFORMILTEN";	//Hier liegt ein Stab für dich, Milten!

	// Kommentar, wenn nichts vor sich geht

	AMBIENTTALK01	=	"SVM_12_AMBIENTTALK01";	//Ich muss pissen ...
	AMBIENTTALK02	=	"SVM_12_AMBIENTTALK02";	//(gähnt) Mir ist langweilig ...
	AMBIENTTALK03	=	"SVM_12_AMBIENTTALK03";	//Das Blut an meiner Axt trocknet schon wieder ...
	AMBIENTTALK04	=	"SVM_12_AMBIENTTALK04";	//Hat einer von euch einen Schleifstein ...?
	AMBIENTTALK05	=	"SVM_12_AMBIENTTALK05";	//Hacke, hacke Kuchen, der Infizierte hat gerufen!

	// Kommentar, wenn falsche Waffe eingesammelt

	NOTMYWEAPON	=	"SVM_12_NOTMYWEAPON";	//Was soll ich denn damit?

	// Kommentar, wenn NPC Hero rettet aus Zelle

	RETTUNG		=	"SVM_12_RETTUNG";	//Alles klar?

	// Trank trinken lassen

	TRINKTRANK01	=	"SVM_12_TRINKTRANK01";	//Trink deinen Trank.
	TRINKTRANK02	=	"SVM_12_TRINKTRANK02";	//Hm, na gut.

	// Aus Knast befreien

	ZELLE01		=	"SVM_12_ZELLE01";	//Beeil dich.
	ZELLE02		=	"SVM_12_ZELLE02";	//Wurde auch Zeit ...

	// Folge mir

	FOLLOWME01	=	"SVM_12_FOLLOWME01";	//Kannst wieder mitkommen.
	FOLLOWME02	=	"SVM_12_FOLLOWME02";	//Ok ...

	// Warte hier

	WAITHERE01	=	"SVM_12_WAITHERE01";	//Warte kurz.
	WAITHERE02	=	"SVM_12_WAITHERE02";	//Ok ...

	// Milten kein Skelett mehr

	MILTENSKELETT01	=	"SVM_12_MILTENSKELETT01";	//Spar dein Mana besser für wichtigere Dinge als Skelette.

	// Milten doch Skelett

	MILTENSKELETT02	=	"SVM_12_MILTENSKELETT02";	//Du solltest lieber ein Skelett beschwören.
};

// Lester

instance SVM_13 (C_SVM)
{
	// Kommentar, wenn er Trank übergibt

	HIERTRANK	=	"SVM_13_HIERTRANK";	//Hier, trink das.

	// Kommentar, wenn Bossmonster entdeckt wird

	BOSSTANK	=	"SVM_13_BOSSTANK";	//Achtung, ein Tank!
	BOSSBOOMER	=	"SVM_13_BOSSBOOMER";	//Vorsicht vor dem Boomer!
	BOSSWITCH	=	"SVM_13_BOSSWITCH";	//Aufpassen, da ist eine Witch.
	BOSSHUNTER	=	"SVM_13_BOSSHUNTER";	//In Deckung, ein Hunter!
	BOSSHORDENFUEHRER	=	"SVM_13_BOSSHORDENFUEHRER";	//Da ist ein Hordenführer!
	BOSSSMOKER	=	"SVM_13_BOSSSMOKER";	//Smoker!
	BOSSSPITTER	=	"SVM_13_BOSSSPITTER";	//Vorsicht, Spitter!

	// Kommentar, wenn man fünf Minuten rumsteht

	STANDING	=	"SVM_13_STANDING";	//Ich glaube, meine Beine sind mir eingeschlafen.

	// Kommentar, wenn man wiederbelebt wurde

	WIEDERBELEBT	=	"SVM_13_WIEDERBELEBT";	//Danke!

	// Kommentar, wenn man nach 20 Sekunden noch nicht wiederbelebt wurde

	HELFTENDLICH01	=	"SVM_13_HELFTENDLICH01";	//Kann mir bitte einer hochhelfen?	
	HELFTENDLICH02	=	"SVM_13_HELFTENDLICH02";	//Ahh ... überall Blut ... ich brauche Hilfe ...

	// Kommentar, warum kein Trank gegeben werden kann

	CANTGIVEPOTIONATTACK	=	"SVM_13_CANTGIVEPOTIONATTACK";	//Wenn er kämpft, kann ich ihm keinen Trank geben.
	CANTGIVEPOTIONPOTION	=	"SVM_13_CANTGIVEPOTIONPOTION";	//Er trinkt gerade schon einen Trank.
	CANTGIVEPOTIONOTHERONE	=	"SVM_13_CANTGIVEPOTIONOTHERONE";	//Einer von den anderen will ihm schon einen Trank geben.
	CANTGIVEPOTIONDONTHAVEPOTION	=	"SVM_13_CANTGIVEPOTIONDONTHAVEPOTION";	//Ich habe keinen Trank mehr, den ich ihm geben könnte.
	CANTGIVEPOTIONHASPOTION	=	"SVM_13_CANTGIVEPOTIONHASPOTION";	//Er hat noch einen Trank, da braucht er meinen nicht.
	CANTGIVEPOTIONHASHP	=	"SVM_13_CANTGIVEPOTIONHASHP";	//Er ist noch fit genug, da wird er noch keinen Trank brauchen.
	CANTGIVEPOTIONTOOFAR	=	"SVM_13_CANTGIVEPOTIONTOOFAR";	//Ich müsste noch ein Stück näher ran.	

	// Kommentar, wenn man einen Boss getötet hat

	KILLEDBOSS01	=	"SVM_13_KILLEDBOSS01";	//Ha, dem hab ich's gezeigt!
	KILLEDBOSS02	=	"SVM_13_KILLEDBOSS02";	//Der steht nicht mehr auf.

	// Kommentar, wenn man zu viele Heiltränke hat

	TOOMUCHPOTIONHEALTH	=	"SVM_13_TOOMUCHPOTIONHEALTH";	//Ein Trank reicht, den hier soll jemand nehmen, der ihn nötiger hat.

	// Kommentar, wenn man Köcher genommen hat

	TOOKKOECHER	=	"SVM_13_TOOKKOECHER";	//Ich glaube der Köcher ist eher etwas für Diego.

	// Kommentar, wenn man Primärwaffe genommen hat

	TOOKFIRSTWEAPON	=	"SVM_13_TOOKFIRSTWEAPON";	//Ein neues Schwert ...

	// Kommentar, wenn man die Waffe eines Kameraden entdeckt

	FIRSTWEAPONFORGORN	=	"SVM_13_FIRSTWEAPONFORGORN";	//Gorn, hier liegt was für dich.
	FIRSTWEAPONFORDIEGO	=	"SVM_13_FIRSTWEAPONFORDIEGO";	//Diego, da liegt ein Bogen.
	FIRSTWEAPONFORMILTEN	=	"SVM_13_FIRSTWEAPONFORMILTEN";	//Hey Milten, da schimmert eine Rune.
	SECONDWEAPONFORDIEGO	=	"SVM_13_SECONDWEAPONFORDIEGO";	//Hier ist ein Schwert für dich, Diego.
	SECONDWEAPONFORMILTEN	=	"SVM_13_SECONDWEAPONFORMILTEN";	//Das sieht nach einem Stab für dich aus, Milten.

	// Kommentar, wenn nichts vor sich geht

	AMBIENTTALK01	=	"SVM_13_AMBIENTTALK01";	//Irgendwie ist es hier unheimlich ...
	AMBIENTTALK02	=	"SVM_13_AMBIENTTALK02";	//Was war das ...?
	AMBIENTTALK03	=	"SVM_13_AMBIENTTALK03";	//Die haben wohl zuviel Sumpfkraut geraucht ...
	AMBIENTTALK04	=	"SVM_13_AMBIENTTALK04";	//Ein Stengel Sumpfkraut wäre jetzt was ...
	AMBIENTTALK05	=	"SVM_13_AMBIENTTALK05";	//Ob man hier irgendwo Sumpfkraut pflanzen könnte ...?

	// Kommentar, wenn falsche Waffe eingesammelt

	NOTMYWEAPON	=	"SVM_13_NOTMYWEAPON";	//Die Waffe ist nichts für mich ...

	// Kommentar, wenn NPC Hero rettet aus Zelle

	RETTUNG		=	"SVM_13_RETTUNG";	//Endlich hab ich dich gefunden ...

	// Trank trinken lassen

	TRINKTRANK01	=	"SVM_13_TRINKTRANK01";	//Es wäre besser, wenn du deinen Trank jetzt schon trinkst.
	TRINKTRANK02	=	"SVM_13_TRINKTRANK02";	//Wenn du meinst ...

	// Aus Knast befreien

	ZELLE01		=	"SVM_13_ZELLE01";	//Schnell weg hier.
	ZELLE02		=	"SVM_13_ZELLE02";	//Weiter geht's ...

	// Folge mir

	FOLLOWME01	=	"SVM_13_FOLLOWME01";	//Mir nach.
	FOLLOWME02	=	"SVM_13_FOLLOWME02";	//Gut, weiter geht's.

	// Warte hier

	WAITHERE01	=	"SVM_13_WAITHERE01";	//Bleib mal kurz hier.
	WAITHERE02	=	"SVM_13_WAITHERE02";	//Gut ...

	// Milten kein Skelett mehr

	MILTENSKELETT01	=	"SVM_13_MILTENSKELETT01";	//Lass die Skelette lieber, wo sie sind.

	// Milten doch Skelett

	MILTENSKELETT02	=	"SVM_13_MILTENSKELETT02";	//Mit einem Skelett zur Unterstützung hätten wir es sicher etwas leichter.
};


instance SVM_14 (C_SVM)
{
	
};

// ****************
// 		SPIELER
// ****************

INSTANCE SVM_15	(C_SVM)		//	PLAYER	trocken,ernst
{
	
};

// ***************
// 		Frauen
// ***************

instance SVM_16 (C_SVM)
{
	
};

instance SVM_17 (C_SVM)
{
	
};


// *************
// 		Orks
// *************

INSTANCE SVM_18	(C_SVM)							
{

};

// ****************
// 	   Dementor
// ****************

INSTANCE SVM_19	(C_SVM)
{
	
};
 

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	20;




