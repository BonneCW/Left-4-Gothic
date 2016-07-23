// *************************
// Globalvariablen für Story
// *************************

// ------ Teacher MAX Werte ------
const int T_MEGA = 300; //Pyrokar MANA
const int T_MAX = 200;
const int T_HIGH = 120;
const int T_MED = 90;
const int T_LOW = 60;

var int heroX;
var int heroY;
var int heroZ;

// Nahkämpfer strafen lassen, wenn sie in Schussbahn stehen

var int Lester_Strafing;
var int Gorn_Strafing;
var int Diego_Strafing;
var int Milten_Strafing;
var int MiltenSkelett_Strafing;

// Zombies zählen

var int ZombieHorden_Counter;
var int ZombieHorden_Max;
var int Tank_Counter;
var int Tank_Max;
var int Boomer_Counter;
var int Boomer_Max;
var int Hordenfuehrer_Counter;
var int Hordenfuehrer_Max;
var int Spitter_Counter;
var int Spitter_Max;
var int Smoker_Counter;
var int Smoker_Max;
var int Monster_Max;
var int Monster_Counter;

// Hinweis wegen Waffe

var int Mod_Lester_FirstWeapon;
var int Mod_Gorn_FirstWeapon;
var int Mod_Diego_FirstWeapon;
var int Mod_Milten_FirstWeapon;
var int Mod_Diego_SecondWeapon;
var int Mod_Milten_SecondWeapon;

// Waffe austauschen

var int Mod_LesterBetter_Weapon;
var int Mod_GornBetter_Weapon;
var int Mod_DiegoBetter_Weapon;
var int Mod_MiltenBetter_Weapon;

// Vergiftung

var int Mod_LesterVergiftet;
var int Mod_GornVergiftet;
var int Mod_DiegoVergiftet;
var int Mod_MiltenVergiftet;
var int Mod_HeroVergiftet;

// Spiel wird beendet

var int EndCounter;

// Start einer Kampagne: Wetter und Uhrzeit einstellen

var int Mod_StartCampaign;

// Hordenführer spawnt nur alle x Sekunden

var int Mod_Hordenfuehrer_Summon;

// Monstercounter anzeigen

var string ShowMonsterCounter;

// Zu viele Heiltränke gesammelt

var int Mod_Spawn_Trank;

// Kommentar jede Minute, wo nichts passiert ist

var int Mod_NothingHappened_Counter;

// Punkte-Liste

var int LesterPoints;
var int GornPoints;
var int DiegoPoints;
var int MiltenPoints;

var string ShowLester;
var string ShowGorn;
var string ShowDiego;
var string ShowMilten;

var int DiegoPos;
var int GornPos;
var int LesterPos;
var int MiltenPos;

const int Pos1 = 2;
const int Pos2 = 10;
const int Pos3 = 18;
const int Pos4 = 26;

// Skelettzähler für Milten

var int Mod_MiltenSkelett;
var int Mod_MiltenSkelettSpawn;

// Folgen/Position halten

var int LesterWait;
var int GornWait;
var int DiegoWait;
var int MiltenWait;

var string LesterWaypoint;
var string GornWaypoint;
var string DiegoWaypoint;
var string MiltenWaypoint;

// Start-Menü

var int Mod_InMenu;
var int Mod_Charakter;
var int Mod_Kampagne;
var int Mod_Schwierigkeitsgrad;
var int OldCPU;
var int Mod_Punkte;

var int CurrentLevel;

// Zeit-Counter

var int CurrentTime;

// Counter, wie lange der Held steht, wegen Kommentar der Begleiter und Bossspawn

var int Mod_StillStandTime;

// in der Zelle nach Tod?

var int LesterKnast;
var int HeroKnast;
var int DiegoKnast;
var int GornKnast;
var int MiltenKnast;

// Held wird befreit :)

var int MiltenRettung;
var int LesterRettung;
var int GornRettung;
var int DiegoRettung;

// Onlinekram

var string username;
var string passwort;

var int online_playtime;
var string online_playtime_s;

var string eingabe;

var int Offline_Modus;
var int ValidateUserPasswort;

var string GOTHIC_RESTART;

var int CurrentLevel2;

var int Mod_OnlineMode;