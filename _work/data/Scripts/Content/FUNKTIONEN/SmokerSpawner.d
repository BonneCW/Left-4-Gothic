FUNC VOID SmokerSpawner ()
{
	// Smokers spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Smoker_Limit_Levelpart_One_Current < Smoker_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Smoker_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Smoker_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_01");

			Smoker_Spawnpoints_Levelpart_One_01 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Smoker_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_02");

			Smoker_Spawnpoints_Levelpart_One_02 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Smoker_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_03");

			Smoker_Spawnpoints_Levelpart_One_03 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Smoker_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_04");

			Smoker_Spawnpoints_Levelpart_One_04 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Smoker_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_05");
	
			Smoker_Spawnpoints_Levelpart_One_05 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Smoker_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_06");

			Smoker_Spawnpoints_Levelpart_One_06 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Smoker_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_07");

			Smoker_Spawnpoints_Levelpart_One_07 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Smoker_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_08");

			Smoker_Spawnpoints_Levelpart_One_08 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Smoker_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_09");

			Smoker_Spawnpoints_Levelpart_One_09 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Smoker_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_01_10");

			Smoker_Spawnpoints_Levelpart_One_10 = TRUE;

			Smoker_Limit_Levelpart_One_Current += 1;
		};

		SmokerSpawner();
	}
	else if (Smoker_Limit_Levelpart_Two_Current < Smoker_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Smoker_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Smoker_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_01");

			Smoker_Spawnpoints_Levelpart_Two_01 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Smoker_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_02");

			Smoker_Spawnpoints_Levelpart_Two_02 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Smoker_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_03");

			Smoker_Spawnpoints_Levelpart_Two_03 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Smoker_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_04");

			Smoker_Spawnpoints_Levelpart_Two_04 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Smoker_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_05");
	
			Smoker_Spawnpoints_Levelpart_Two_05 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Smoker_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_06");

			Smoker_Spawnpoints_Levelpart_Two_06 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Smoker_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_07");

			Smoker_Spawnpoints_Levelpart_Two_07 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Smoker_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_08");

			Smoker_Spawnpoints_Levelpart_Two_08 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Smoker_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_09");

			Smoker_Spawnpoints_Levelpart_Two_09 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Smoker_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_02_10");

			Smoker_Spawnpoints_Levelpart_Two_10 = TRUE;

			Smoker_Limit_Levelpart_Two_Current += 1;
		};

		SmokerSpawner();
	}
	else if (Smoker_Limit_Levelpart_Three_Current < Smoker_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Smoker_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Smoker_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_01");

			Smoker_Spawnpoints_Levelpart_Three_01 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Smoker_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_02");

			Smoker_Spawnpoints_Levelpart_Three_02 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Smoker_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_03");

			Smoker_Spawnpoints_Levelpart_Three_03 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Smoker_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_04");

			Smoker_Spawnpoints_Levelpart_Three_04 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Smoker_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_05");
	
			Smoker_Spawnpoints_Levelpart_Three_05 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Smoker_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_06");

			Smoker_Spawnpoints_Levelpart_Three_06 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Smoker_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_07");

			Smoker_Spawnpoints_Levelpart_Three_07 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Smoker_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_08");

			Smoker_Spawnpoints_Levelpart_Three_08 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Smoker_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_09");

			Smoker_Spawnpoints_Levelpart_Three_09 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Smoker_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_03_10");

			Smoker_Spawnpoints_Levelpart_Three_10 = TRUE;

			Smoker_Limit_Levelpart_Three_Current += 1;
		};

		SmokerSpawner();
	}
	else if (Smoker_Limit_Levelpart_Four_Current < Smoker_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Smoker_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Smoker_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_01");

			Smoker_Spawnpoints_Levelpart_Four_01 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Smoker_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_02");

			Smoker_Spawnpoints_Levelpart_Four_02 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Smoker_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_03");

			Smoker_Spawnpoints_Levelpart_Four_03 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Smoker_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_04");

			Smoker_Spawnpoints_Levelpart_Four_04 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Smoker_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_05");
	
			Smoker_Spawnpoints_Levelpart_Four_05 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Smoker_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_06");

			Smoker_Spawnpoints_Levelpart_Four_06 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Smoker_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_07");

			Smoker_Spawnpoints_Levelpart_Four_07 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Smoker_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_08");

			Smoker_Spawnpoints_Levelpart_Four_08 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Smoker_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_09");

			Smoker_Spawnpoints_Levelpart_Four_09 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Smoker_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertNpc	(Smoker,	"SMOKER_04_10");

			Smoker_Spawnpoints_Levelpart_Four_10 = TRUE;

			Smoker_Limit_Levelpart_Four_Current += 1;
		};

		SmokerSpawner();
	}
	else
	{
		return;
	};

	
};