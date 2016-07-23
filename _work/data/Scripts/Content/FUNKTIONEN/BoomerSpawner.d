FUNC VOID BoomerSpawner ()
{
	// Boomers spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Boomer_Limit_Levelpart_One_Current < Boomer_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Boomer_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Boomer_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_01");

			Boomer_Spawnpoints_Levelpart_One_01 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Boomer_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_02");

			Boomer_Spawnpoints_Levelpart_One_02 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Boomer_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_03");

			Boomer_Spawnpoints_Levelpart_One_03 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Boomer_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_04");

			Boomer_Spawnpoints_Levelpart_One_04 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Boomer_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_05");
	
			Boomer_Spawnpoints_Levelpart_One_05 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Boomer_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_06");

			Boomer_Spawnpoints_Levelpart_One_06 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Boomer_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_07");

			Boomer_Spawnpoints_Levelpart_One_07 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Boomer_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_08");

			Boomer_Spawnpoints_Levelpart_One_08 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Boomer_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_09");

			Boomer_Spawnpoints_Levelpart_One_09 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Boomer_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_01_10");

			Boomer_Spawnpoints_Levelpart_One_10 = TRUE;

			Boomer_Limit_Levelpart_One_Current += 1;
		};

		BoomerSpawner();
	}
	else if (Boomer_Limit_Levelpart_Two_Current < Boomer_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Boomer_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Boomer_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_01");

			Boomer_Spawnpoints_Levelpart_Two_01 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Boomer_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_02");

			Boomer_Spawnpoints_Levelpart_Two_02 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Boomer_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_03");

			Boomer_Spawnpoints_Levelpart_Two_03 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Boomer_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_04");

			Boomer_Spawnpoints_Levelpart_Two_04 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Boomer_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_05");
	
			Boomer_Spawnpoints_Levelpart_Two_05 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Boomer_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_06");

			Boomer_Spawnpoints_Levelpart_Two_06 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Boomer_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_07");

			Boomer_Spawnpoints_Levelpart_Two_07 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Boomer_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_08");

			Boomer_Spawnpoints_Levelpart_Two_08 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Boomer_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_09");

			Boomer_Spawnpoints_Levelpart_Two_09 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Boomer_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_02_10");

			Boomer_Spawnpoints_Levelpart_Two_10 = TRUE;

			Boomer_Limit_Levelpart_Two_Current += 1;
		};

		BoomerSpawner();
	}
	else if (Boomer_Limit_Levelpart_Three_Current < Boomer_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Boomer_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Boomer_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_01");

			Boomer_Spawnpoints_Levelpart_Three_01 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Boomer_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_02");

			Boomer_Spawnpoints_Levelpart_Three_02 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Boomer_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_03");

			Boomer_Spawnpoints_Levelpart_Three_03 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Boomer_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_04");

			Boomer_Spawnpoints_Levelpart_Three_04 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Boomer_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_05");
	
			Boomer_Spawnpoints_Levelpart_Three_05 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Boomer_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_06");

			Boomer_Spawnpoints_Levelpart_Three_06 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Boomer_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_07");

			Boomer_Spawnpoints_Levelpart_Three_07 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Boomer_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_08");

			Boomer_Spawnpoints_Levelpart_Three_08 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Boomer_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_09");

			Boomer_Spawnpoints_Levelpart_Three_09 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Boomer_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_03_10");

			Boomer_Spawnpoints_Levelpart_Three_10 = TRUE;

			Boomer_Limit_Levelpart_Three_Current += 1;
		};

		BoomerSpawner();
	}
	else if (Boomer_Limit_Levelpart_Four_Current < Boomer_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Boomer_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Boomer_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_01");

			Boomer_Spawnpoints_Levelpart_Four_01 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Boomer_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_02");

			Boomer_Spawnpoints_Levelpart_Four_02 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Boomer_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_03");

			Boomer_Spawnpoints_Levelpart_Four_03 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Boomer_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_04");

			Boomer_Spawnpoints_Levelpart_Four_04 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Boomer_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_05");
	
			Boomer_Spawnpoints_Levelpart_Four_05 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Boomer_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_06");

			Boomer_Spawnpoints_Levelpart_Four_06 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Boomer_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_07");

			Boomer_Spawnpoints_Levelpart_Four_07 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Boomer_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_08");

			Boomer_Spawnpoints_Levelpart_Four_08 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Boomer_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_09");

			Boomer_Spawnpoints_Levelpart_Four_09 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Boomer_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertNpc	(Boomer,	"BOOMER_04_10");

			Boomer_Spawnpoints_Levelpart_Four_10 = TRUE;

			Boomer_Limit_Levelpart_Four_Current += 1;
		};

		BoomerSpawner();
	}
	else
	{
		return;
	};

	
};