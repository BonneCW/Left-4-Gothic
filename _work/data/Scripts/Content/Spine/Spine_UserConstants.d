// The values for this variables can be specified by the user

const int SPINE_ACHIEVEMENTORIENTATION = SPINE_BOTTOMRIGHT; // position of the achievement widget
const int SPINE_SHOWACHIEVEMENTS = TRUE; // show achievement (you can set this to FALSE to disable the achievement widget, but internally the achievement will be unlocked, so you still can see it in Spine)
const int SPINE_ACHIEVEMENT_DISPLAY_TIME = 3000; // show achievement for 3 seconds

const int L4G_ERFOLG_PASSEDTEST = 0;
const int L4G_ERFOLG_PASSEDEASY = 1;
const int L4G_ERFOLG_PASSEDMEDIUM = 2;
const int L4G_ERFOLG_PASSEDHARD = 3;

// define the strings for the achievements
// don't use an identifier for unlockAchievement greater than the maximum index of the array
const int MAX_ACHIEVEMENTS = 4;
const string SPINE_ACHIEVEMENT_NAMES[MAX_ACHIEVEMENTS] = {
	"Test bestanden",
	"Einfach",
	"Mittel",
	"Schwer"
};

const string SPINE_ACHIEVEMENT_TEXTURES[MAX_ACHIEVEMENTS] = {
	"SPINE_ACHIEVEMENT_DEFAULT.TGA",
	"SPINE_ACHIEVEMENT_DEFAULT.TGA",
	"SPINE_ACHIEVEMENT_DEFAULT.TGA",
	"SPINE_ACHIEVEMENT_DEFAULT.TGA"
};

const int L4G_SCORE_TEST = 0;
