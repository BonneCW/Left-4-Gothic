FUNC VOID SpitterSpawner ()
{
	// Spitters spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Spitter_Limit_Levelpart_One_Current < Spitter_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Spitter_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Spitter_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_01");

			Spitter_Spawnpoints_Levelpart_One_01 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Spitter_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_02");

			Spitter_Spawnpoints_Levelpart_One_02 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Spitter_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_03");

			Spitter_Spawnpoints_Levelpart_One_03 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Spitter_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_04");

			Spitter_Spawnpoints_Levelpart_One_04 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Spitter_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_05");
	
			Spitter_Spawnpoints_Levelpart_One_05 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Spitter_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_06");

			Spitter_Spawnpoints_Levelpart_One_06 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Spitter_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_07");

			Spitter_Spawnpoints_Levelpart_One_07 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Spitter_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_08");

			Spitter_Spawnpoints_Levelpart_One_08 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Spitter_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_09");

			Spitter_Spawnpoints_Levelpart_One_09 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Spitter_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_01_10");

			Spitter_Spawnpoints_Levelpart_One_10 = TRUE;

			Spitter_Limit_Levelpart_One_Current += 1;
		};

		SpitterSpawner();
	}
	else if (Spitter_Limit_Levelpart_Two_Current < Spitter_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Spitter_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Spitter_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_01");

			Spitter_Spawnpoints_Levelpart_Two_01 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Spitter_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_02");

			Spitter_Spawnpoints_Levelpart_Two_02 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Spitter_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_03");

			Spitter_Spawnpoints_Levelpart_Two_03 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Spitter_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_04");

			Spitter_Spawnpoints_Levelpart_Two_04 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Spitter_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_05");
	
			Spitter_Spawnpoints_Levelpart_Two_05 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Spitter_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_06");

			Spitter_Spawnpoints_Levelpart_Two_06 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Spitter_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_07");

			Spitter_Spawnpoints_Levelpart_Two_07 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Spitter_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_08");

			Spitter_Spawnpoints_Levelpart_Two_08 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Spitter_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_09");

			Spitter_Spawnpoints_Levelpart_Two_09 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Spitter_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_02_10");

			Spitter_Spawnpoints_Levelpart_Two_10 = TRUE;

			Spitter_Limit_Levelpart_Two_Current += 1;
		};

		SpitterSpawner();
	}
	else if (Spitter_Limit_Levelpart_Three_Current < Spitter_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Spitter_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Spitter_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_01");

			Spitter_Spawnpoints_Levelpart_Three_01 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Spitter_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_02");

			Spitter_Spawnpoints_Levelpart_Three_02 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Spitter_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_03");

			Spitter_Spawnpoints_Levelpart_Three_03 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Spitter_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_04");

			Spitter_Spawnpoints_Levelpart_Three_04 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Spitter_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_05");
	
			Spitter_Spawnpoints_Levelpart_Three_05 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Spitter_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_06");

			Spitter_Spawnpoints_Levelpart_Three_06 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Spitter_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_07");

			Spitter_Spawnpoints_Levelpart_Three_07 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Spitter_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_08");

			Spitter_Spawnpoints_Levelpart_Three_08 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Spitter_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_09");

			Spitter_Spawnpoints_Levelpart_Three_09 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Spitter_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_03_10");

			Spitter_Spawnpoints_Levelpart_Three_10 = TRUE;

			Spitter_Limit_Levelpart_Three_Current += 1;
		};

		SpitterSpawner();
	}
	else if (Spitter_Limit_Levelpart_Four_Current < Spitter_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Spitter_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Spitter_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_01");

			Spitter_Spawnpoints_Levelpart_Four_01 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Spitter_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_02");

			Spitter_Spawnpoints_Levelpart_Four_02 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Spitter_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_03");

			Spitter_Spawnpoints_Levelpart_Four_03 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Spitter_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_04");

			Spitter_Spawnpoints_Levelpart_Four_04 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Spitter_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_05");
	
			Spitter_Spawnpoints_Levelpart_Four_05 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Spitter_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_06");

			Spitter_Spawnpoints_Levelpart_Four_06 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Spitter_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_07");

			Spitter_Spawnpoints_Levelpart_Four_07 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Spitter_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_08");

			Spitter_Spawnpoints_Levelpart_Four_08 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Spitter_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_09");

			Spitter_Spawnpoints_Levelpart_Four_09 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Spitter_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertNpc	(Spitter,	"SPITTER_04_10");

			Spitter_Spawnpoints_Levelpart_Four_10 = TRUE;

			Spitter_Limit_Levelpart_Four_Current += 1;
		};

		SpitterSpawner();
	}
	else
	{
		return;
	};

	
};