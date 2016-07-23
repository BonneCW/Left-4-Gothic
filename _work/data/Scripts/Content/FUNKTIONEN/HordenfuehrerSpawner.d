FUNC VOID HordenfuehrerSpawner ()
{
	// Hordenführer spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Hordenfuehrer_Limit_Levelpart_One_Current < Hordenfuehrer_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Hordenfuehrer_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_01");

			Hordenfuehrer_Spawnpoints_Levelpart_One_01 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_02");

			Hordenfuehrer_Spawnpoints_Levelpart_One_02 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_03");

			Hordenfuehrer_Spawnpoints_Levelpart_One_03 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_04");

			Hordenfuehrer_Spawnpoints_Levelpart_One_04 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_05");
	
			Hordenfuehrer_Spawnpoints_Levelpart_One_05 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_06");

			Hordenfuehrer_Spawnpoints_Levelpart_One_06 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_07");

			Hordenfuehrer_Spawnpoints_Levelpart_One_07 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_08");

			Hordenfuehrer_Spawnpoints_Levelpart_One_08 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_09");

			Hordenfuehrer_Spawnpoints_Levelpart_One_09 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_01_10");

			Hordenfuehrer_Spawnpoints_Levelpart_One_10 = TRUE;

			Hordenfuehrer_Limit_Levelpart_One_Current += 1;
		};

		HordenfuehrerSpawner();
	}
	else if (Hordenfuehrer_Limit_Levelpart_Two_Current < Hordenfuehrer_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Hordenfuehrer_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_01");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_01 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_02");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_02 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_03");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_03 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_04");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_04 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_05");
	
			Hordenfuehrer_Spawnpoints_Levelpart_Two_05 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_06");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_06 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_07");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_07 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_08");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_08 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_09");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_09 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_02_10");

			Hordenfuehrer_Spawnpoints_Levelpart_Two_10 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Two_Current += 1;
		};

		HordenfuehrerSpawner();
	}
	else if (Hordenfuehrer_Limit_Levelpart_Three_Current < Hordenfuehrer_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Hordenfuehrer_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_01");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_01 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_02");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_02 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_03");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_03 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_04");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_04 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_05");
	
			Hordenfuehrer_Spawnpoints_Levelpart_Three_05 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_06");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_06 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_07");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_07 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_08");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_08 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_09");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_09 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_03_10");

			Hordenfuehrer_Spawnpoints_Levelpart_Three_10 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Three_Current += 1;
		};

		HordenfuehrerSpawner();
	}
	else if (Hordenfuehrer_Limit_Levelpart_Four_Current < Hordenfuehrer_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Hordenfuehrer_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_01");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_01 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_02");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_02 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_03");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_03 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_04");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_04 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_05");
	
			Hordenfuehrer_Spawnpoints_Levelpart_Four_05 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_06");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_06 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_07");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_07 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_08");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_08 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_09");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_09 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Hordenfuehrer_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertNpc	(Hordenfuehrer,	"HORDENFUEHRER_04_10");

			Hordenfuehrer_Spawnpoints_Levelpart_Four_10 = TRUE;

			Hordenfuehrer_Limit_Levelpart_Four_Current += 1;
		};

		HordenfuehrerSpawner();
	}
	else
	{
		return;
	};

	
};