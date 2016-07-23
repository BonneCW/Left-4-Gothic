FUNC VOID HunterSpawner ()
{
	// Hunters spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Hunter_Limit_Levelpart_One_Current < Hunter_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Hunter_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Hunter_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_01");

			Hunter_Spawnpoints_Levelpart_One_01 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Hunter_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_02");

			Hunter_Spawnpoints_Levelpart_One_02 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Hunter_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_03");

			Hunter_Spawnpoints_Levelpart_One_03 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Hunter_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_04");

			Hunter_Spawnpoints_Levelpart_One_04 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Hunter_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_05");
	
			Hunter_Spawnpoints_Levelpart_One_05 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Hunter_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_06");

			Hunter_Spawnpoints_Levelpart_One_06 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Hunter_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_07");

			Hunter_Spawnpoints_Levelpart_One_07 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Hunter_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_08");

			Hunter_Spawnpoints_Levelpart_One_08 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Hunter_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_09");

			Hunter_Spawnpoints_Levelpart_One_09 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Hunter_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_01_10");

			Hunter_Spawnpoints_Levelpart_One_10 = TRUE;

			Hunter_Limit_Levelpart_One_Current += 1;
		};

		HunterSpawner();
	}
	else if (Hunter_Limit_Levelpart_Two_Current < Hunter_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Hunter_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Hunter_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_01");

			Hunter_Spawnpoints_Levelpart_Two_01 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Hunter_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_02");

			Hunter_Spawnpoints_Levelpart_Two_02 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Hunter_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_03");

			Hunter_Spawnpoints_Levelpart_Two_03 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Hunter_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_04");

			Hunter_Spawnpoints_Levelpart_Two_04 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Hunter_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_05");
	
			Hunter_Spawnpoints_Levelpart_Two_05 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Hunter_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_06");

			Hunter_Spawnpoints_Levelpart_Two_06 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Hunter_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_07");

			Hunter_Spawnpoints_Levelpart_Two_07 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Hunter_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_08");

			Hunter_Spawnpoints_Levelpart_Two_08 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Hunter_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_09");

			Hunter_Spawnpoints_Levelpart_Two_09 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Hunter_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_02_10");

			Hunter_Spawnpoints_Levelpart_Two_10 = TRUE;

			Hunter_Limit_Levelpart_Two_Current += 1;
		};

		HunterSpawner();
	}
	else if (Hunter_Limit_Levelpart_Three_Current < Hunter_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Hunter_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Hunter_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_01");

			Hunter_Spawnpoints_Levelpart_Three_01 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Hunter_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_02");

			Hunter_Spawnpoints_Levelpart_Three_02 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Hunter_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_03");

			Hunter_Spawnpoints_Levelpart_Three_03 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Hunter_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_04");

			Hunter_Spawnpoints_Levelpart_Three_04 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Hunter_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_05");
	
			Hunter_Spawnpoints_Levelpart_Three_05 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Hunter_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_06");

			Hunter_Spawnpoints_Levelpart_Three_06 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Hunter_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_07");

			Hunter_Spawnpoints_Levelpart_Three_07 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Hunter_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_08");

			Hunter_Spawnpoints_Levelpart_Three_08 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Hunter_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_09");

			Hunter_Spawnpoints_Levelpart_Three_09 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Hunter_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_03_10");

			Hunter_Spawnpoints_Levelpart_Three_10 = TRUE;

			Hunter_Limit_Levelpart_Three_Current += 1;
		};

		HunterSpawner();
	}
	else if (Hunter_Limit_Levelpart_Four_Current < Hunter_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Hunter_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Hunter_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_01");

			Hunter_Spawnpoints_Levelpart_Four_01 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Hunter_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_02");

			Hunter_Spawnpoints_Levelpart_Four_02 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Hunter_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_03");

			Hunter_Spawnpoints_Levelpart_Four_03 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Hunter_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_04");

			Hunter_Spawnpoints_Levelpart_Four_04 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Hunter_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_05");
	
			Hunter_Spawnpoints_Levelpart_Four_05 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Hunter_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_06");

			Hunter_Spawnpoints_Levelpart_Four_06 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Hunter_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_07");

			Hunter_Spawnpoints_Levelpart_Four_07 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Hunter_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_08");

			Hunter_Spawnpoints_Levelpart_Four_08 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Hunter_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_09");

			Hunter_Spawnpoints_Levelpart_Four_09 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Hunter_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertNpc	(Hunter,	"HUNTER_04_10");

			Hunter_Spawnpoints_Levelpart_Four_10 = TRUE;

			Hunter_Limit_Levelpart_Four_Current += 1;
		};

		HunterSpawner();
	}
	else
	{
		return;
	};

	
};