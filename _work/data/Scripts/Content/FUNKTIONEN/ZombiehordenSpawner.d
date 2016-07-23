FUNC VOID SpawnZusatzWave (var string NWP, var int Amount)
{
	if (Amount > 0)
	{
		Wld_InsertNpc	(Zombie, NWP);

		Amount -= 1;

		SpawnZusatzWave (NWP, Amount);
	}
	else
	{
		return;
	};
};

FUNC VOID SpawnWave (var string WP)
{
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);
	Wld_InsertNpc	(Zombie,	WP);

	var int Randi;
	Randi = r_max(ZombieHorden_Max-1)+1;

	Monster_Max += 10+Randi;

	SpawnZusatzWave (WP, Randi);
};

FUNC VOID ZombiehordenSpawner ()
{
	// Zombiehordes spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Zombiehorde_Limit_Levelpart_One_Current < Zombiehorde_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Zombiehorde_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_01");

			Zombiehorde_Spawnpoints_Levelpart_One_01 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_02");

			Zombiehorde_Spawnpoints_Levelpart_One_02 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_03");

			Zombiehorde_Spawnpoints_Levelpart_One_03 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_04");

			Zombiehorde_Spawnpoints_Levelpart_One_04 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_05");
	
			Zombiehorde_Spawnpoints_Levelpart_One_05 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_06");

			Zombiehorde_Spawnpoints_Levelpart_One_06 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_07");

			Zombiehorde_Spawnpoints_Levelpart_One_07 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_08");

			Zombiehorde_Spawnpoints_Levelpart_One_08 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_09");

			Zombiehorde_Spawnpoints_Levelpart_One_09 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_10");

			Zombiehorde_Spawnpoints_Levelpart_One_10 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 11)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_11 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_11");

			Zombiehorde_Spawnpoints_Levelpart_One_11 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 12)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_12 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_12");

			Zombiehorde_Spawnpoints_Levelpart_One_12 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 13)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_13 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_13");

			Zombiehorde_Spawnpoints_Levelpart_One_13 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 14)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_14 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_14");

			Zombiehorde_Spawnpoints_Levelpart_One_14 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 15)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_15 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_15");

			Zombiehorde_Spawnpoints_Levelpart_One_15 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 16)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_16 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_16");

			Zombiehorde_Spawnpoints_Levelpart_One_16 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 17)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_17 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_17");

			Zombiehorde_Spawnpoints_Levelpart_One_17 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 18)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_18 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_18");

			Zombiehorde_Spawnpoints_Levelpart_One_18 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 19)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_19 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_19");

			Zombiehorde_Spawnpoints_Levelpart_One_19 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 20)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_20 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_20");

			Zombiehorde_Spawnpoints_Levelpart_One_20 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 21)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_21 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_21");

			Zombiehorde_Spawnpoints_Levelpart_One_21 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 22)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_22 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_22");

			Zombiehorde_Spawnpoints_Levelpart_One_22 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 23)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_23 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_23");

			Zombiehorde_Spawnpoints_Levelpart_One_23 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 24)
		&& (Zombiehorde_Spawnpoints_Levelpart_One_24 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_24");

			Zombiehorde_Spawnpoints_Levelpart_One_24 = TRUE;

			Zombiehorde_Limit_Levelpart_One_Current += 1;
		};

		ZombiehordenSpawner();
	}
	else if (Zombiehorde_Limit_Levelpart_Two_Current < Zombiehorde_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Zombiehorde_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_01");

			Zombiehorde_Spawnpoints_Levelpart_Two_01 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_02");

			Zombiehorde_Spawnpoints_Levelpart_Two_02 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_03");

			Zombiehorde_Spawnpoints_Levelpart_Two_03 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_04");

			Zombiehorde_Spawnpoints_Levelpart_Two_04 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_05");
	
			Zombiehorde_Spawnpoints_Levelpart_Two_05 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_06");

			Zombiehorde_Spawnpoints_Levelpart_Two_06 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_07");

			Zombiehorde_Spawnpoints_Levelpart_Two_07 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_08");

			Zombiehorde_Spawnpoints_Levelpart_Two_08 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_09");

			Zombiehorde_Spawnpoints_Levelpart_Two_09 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_10");

			Zombiehorde_Spawnpoints_Levelpart_Two_10 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 11)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_11 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_11");

			Zombiehorde_Spawnpoints_Levelpart_Two_11 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 12)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_12 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_12");

			Zombiehorde_Spawnpoints_Levelpart_Two_12 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 13)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_13 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_13");

			Zombiehorde_Spawnpoints_Levelpart_Two_13 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 14)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_14 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_14");

			Zombiehorde_Spawnpoints_Levelpart_Two_14 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 15)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_15 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_15");

			Zombiehorde_Spawnpoints_Levelpart_Two_15 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 16)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_16 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_16");

			Zombiehorde_Spawnpoints_Levelpart_Two_16 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 17)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_17 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_17");

			Zombiehorde_Spawnpoints_Levelpart_Two_17 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 18)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_18 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_18");

			Zombiehorde_Spawnpoints_Levelpart_Two_18 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 19)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_19 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_19");

			Zombiehorde_Spawnpoints_Levelpart_Two_19 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 20)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_20 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_20");

			Zombiehorde_Spawnpoints_Levelpart_Two_20 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 21)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_21 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_21");

			Zombiehorde_Spawnpoints_Levelpart_Two_21 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 22)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_22 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_22");

			Zombiehorde_Spawnpoints_Levelpart_Two_22 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 23)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_23 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_23");

			Zombiehorde_Spawnpoints_Levelpart_Two_23 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 24)
		&& (Zombiehorde_Spawnpoints_Levelpart_Two_24 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_24");

			Zombiehorde_Spawnpoints_Levelpart_Two_24 = TRUE;

			Zombiehorde_Limit_Levelpart_Two_Current += 1;
		};

		ZombiehordenSpawner();
	}
	else if (Zombiehorde_Limit_Levelpart_Three_Current < Zombiehorde_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Zombiehorde_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_01");

			Zombiehorde_Spawnpoints_Levelpart_Three_01 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_02");

			Zombiehorde_Spawnpoints_Levelpart_Three_02 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_03");

			Zombiehorde_Spawnpoints_Levelpart_Three_03 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_04");

			Zombiehorde_Spawnpoints_Levelpart_Three_04 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_05");
	
			Zombiehorde_Spawnpoints_Levelpart_Three_05 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_06");

			Zombiehorde_Spawnpoints_Levelpart_Three_06 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_07");

			Zombiehorde_Spawnpoints_Levelpart_Three_07 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_08");

			Zombiehorde_Spawnpoints_Levelpart_Three_08 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_09");

			Zombiehorde_Spawnpoints_Levelpart_Three_09 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_10");

			Zombiehorde_Spawnpoints_Levelpart_Three_10 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 11)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_11 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_11");

			Zombiehorde_Spawnpoints_Levelpart_Three_11 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 12)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_12 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_12");

			Zombiehorde_Spawnpoints_Levelpart_Three_12 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 13)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_13 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_13");

			Zombiehorde_Spawnpoints_Levelpart_Three_13 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 14)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_14 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_14");

			Zombiehorde_Spawnpoints_Levelpart_Three_14 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 15)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_15 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_15");

			Zombiehorde_Spawnpoints_Levelpart_Three_15 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 16)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_16 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_16");

			Zombiehorde_Spawnpoints_Levelpart_Three_16 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 17)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_17 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_17");

			Zombiehorde_Spawnpoints_Levelpart_Three_17 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 18)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_18 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_18");

			Zombiehorde_Spawnpoints_Levelpart_Three_18 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 19)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_19 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_19");

			Zombiehorde_Spawnpoints_Levelpart_Three_19 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 20)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_20 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_20");

			Zombiehorde_Spawnpoints_Levelpart_Three_20 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 21)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_21 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_21");

			Zombiehorde_Spawnpoints_Levelpart_Three_21 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 22)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_22 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_22");

			Zombiehorde_Spawnpoints_Levelpart_Three_22 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 23)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_23 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_23");

			Zombiehorde_Spawnpoints_Levelpart_Three_23 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 24)
		&& (Zombiehorde_Spawnpoints_Levelpart_Three_24 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_24");

			Zombiehorde_Spawnpoints_Levelpart_Three_24 = TRUE;

			Zombiehorde_Limit_Levelpart_Three_Current += 1;
		};

		ZombiehordenSpawner();
	}
	else if (Zombiehorde_Limit_Levelpart_Four_Current < Zombiehorde_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Zombiehorde_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_01");

			Zombiehorde_Spawnpoints_Levelpart_Four_01 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_02");

			Zombiehorde_Spawnpoints_Levelpart_Four_02 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_03");

			Zombiehorde_Spawnpoints_Levelpart_Four_03 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_04");

			Zombiehorde_Spawnpoints_Levelpart_Four_04 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_05");
	
			Zombiehorde_Spawnpoints_Levelpart_Four_05 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_06");

			Zombiehorde_Spawnpoints_Levelpart_Four_06 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_07");

			Zombiehorde_Spawnpoints_Levelpart_Four_07 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_08");

			Zombiehorde_Spawnpoints_Levelpart_Four_08 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_09");

			Zombiehorde_Spawnpoints_Levelpart_Four_09 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_10");

			Zombiehorde_Spawnpoints_Levelpart_Four_10 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 11)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_11 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_11");

			Zombiehorde_Spawnpoints_Levelpart_Four_11 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 12)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_12 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_12");

			Zombiehorde_Spawnpoints_Levelpart_Four_12 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 13)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_13 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_13");

			Zombiehorde_Spawnpoints_Levelpart_Four_13 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 14)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_14 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_14");

			Zombiehorde_Spawnpoints_Levelpart_Four_14 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 15)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_15 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_15");

			Zombiehorde_Spawnpoints_Levelpart_Four_15 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 16)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_16 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_16");

			Zombiehorde_Spawnpoints_Levelpart_Four_16 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 17)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_17 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_17");

			Zombiehorde_Spawnpoints_Levelpart_Four_17 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 18)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_18 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_18");

			Zombiehorde_Spawnpoints_Levelpart_Four_18 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 19)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_19 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_19");

			Zombiehorde_Spawnpoints_Levelpart_Four_19 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 20)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_20 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_20");

			Zombiehorde_Spawnpoints_Levelpart_Four_20 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 21)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_21 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_21");

			Zombiehorde_Spawnpoints_Levelpart_Four_21 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 22)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_22 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_22");

			Zombiehorde_Spawnpoints_Levelpart_Four_22 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 23)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_23 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_23");

			Zombiehorde_Spawnpoints_Levelpart_Four_23 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 24)
		&& (Zombiehorde_Spawnpoints_Levelpart_Four_24 == FALSE)
		{
			SpawnWave	("ZOMBIEHORDE_01_24");

			Zombiehorde_Spawnpoints_Levelpart_Four_24 = TRUE;

			Zombiehorde_Limit_Levelpart_Four_Current += 1;
		};

		ZombiehordenSpawner();
	}
	else
	{
		return;
	};

	
};