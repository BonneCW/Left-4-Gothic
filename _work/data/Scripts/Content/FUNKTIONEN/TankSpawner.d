FUNC VOID TankSpawner ()
{
	// Tanks spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Tank_Limit_Levelpart_One_Current < Tank_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Tank_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Tank_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_01");

			Tank_Spawnpoints_Levelpart_One_01 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Tank_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_02");

			Tank_Spawnpoints_Levelpart_One_02 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Tank_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_03");

			Tank_Spawnpoints_Levelpart_One_03 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Tank_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_04");

			Tank_Spawnpoints_Levelpart_One_04 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Tank_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_05");
	
			Tank_Spawnpoints_Levelpart_One_05 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Tank_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_06");

			Tank_Spawnpoints_Levelpart_One_06 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Tank_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_07");

			Tank_Spawnpoints_Levelpart_One_07 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Tank_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_08");

			Tank_Spawnpoints_Levelpart_One_08 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Tank_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_09");

			Tank_Spawnpoints_Levelpart_One_09 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Tank_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_01_10");

			Tank_Spawnpoints_Levelpart_One_10 = TRUE;

			Tank_Limit_Levelpart_One_Current += 1;
		};

		TankSpawner();
	}
	else if (Tank_Limit_Levelpart_Two_Current < Tank_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Tank_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Tank_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_01");

			Tank_Spawnpoints_Levelpart_Two_01 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Tank_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_02");

			Tank_Spawnpoints_Levelpart_Two_02 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Tank_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_03");

			Tank_Spawnpoints_Levelpart_Two_03 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Tank_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_04");

			Tank_Spawnpoints_Levelpart_Two_04 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Tank_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_05");
	
			Tank_Spawnpoints_Levelpart_Two_05 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Tank_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_06");

			Tank_Spawnpoints_Levelpart_Two_06 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Tank_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_07");

			Tank_Spawnpoints_Levelpart_Two_07 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Tank_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_08");

			Tank_Spawnpoints_Levelpart_Two_08 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Tank_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_09");

			Tank_Spawnpoints_Levelpart_Two_09 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Tank_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_02_10");

			Tank_Spawnpoints_Levelpart_Two_10 = TRUE;

			Tank_Limit_Levelpart_Two_Current += 1;
		};

		TankSpawner();
	}
	else if (Tank_Limit_Levelpart_Three_Current < Tank_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Tank_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Tank_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_01");

			Tank_Spawnpoints_Levelpart_Three_01 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Tank_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_02");

			Tank_Spawnpoints_Levelpart_Three_02 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Tank_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_03");

			Tank_Spawnpoints_Levelpart_Three_03 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Tank_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_04");

			Tank_Spawnpoints_Levelpart_Three_04 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Tank_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_05");
	
			Tank_Spawnpoints_Levelpart_Three_05 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Tank_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_06");

			Tank_Spawnpoints_Levelpart_Three_06 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Tank_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_07");

			Tank_Spawnpoints_Levelpart_Three_07 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Tank_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_08");

			Tank_Spawnpoints_Levelpart_Three_08 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Tank_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_09");

			Tank_Spawnpoints_Levelpart_Three_09 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Tank_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_03_10");

			Tank_Spawnpoints_Levelpart_Three_10 = TRUE;

			Tank_Limit_Levelpart_Three_Current += 1;
		};

		TankSpawner();
	}
	else if (Tank_Limit_Levelpart_Four_Current < Tank_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Tank_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Tank_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_01");

			Tank_Spawnpoints_Levelpart_Four_01 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Tank_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_02");

			Tank_Spawnpoints_Levelpart_Four_02 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Tank_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_03");

			Tank_Spawnpoints_Levelpart_Four_03 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Tank_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_04");

			Tank_Spawnpoints_Levelpart_Four_04 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Tank_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_05");
	
			Tank_Spawnpoints_Levelpart_Four_05 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Tank_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_06");

			Tank_Spawnpoints_Levelpart_Four_06 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Tank_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_07");

			Tank_Spawnpoints_Levelpart_Four_07 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Tank_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_08");

			Tank_Spawnpoints_Levelpart_Four_08 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Tank_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_09");

			Tank_Spawnpoints_Levelpart_Four_09 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Tank_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertNpc	(Tank,	"TANK_04_10");

			Tank_Spawnpoints_Levelpart_Four_10 = TRUE;

			Tank_Limit_Levelpart_Four_Current += 1;
		};

		TankSpawner();
	}
	else
	{
		return;
	};

	
};