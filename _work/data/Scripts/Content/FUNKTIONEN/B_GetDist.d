FUNC INT B_GetDist (var C_NPC slf, var C_NPC oth, var C_NPC sub)
{
	if (!Hlp_IsValidNpc(slf))
	{
		return 999999;
	};

	if (!Hlp_IsValidNpc(oth))
	{
		return 999999;
	};

	if (!Hlp_IsValidNpc(sub))
	{
		return 999999;
	};

	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(sub))
	{
		return 999999;
	};

	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(oth))
	{
		return 999999;
	};

	if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(sub))
	{
		return 999999;
	};

	var oCNpc slf2;
	slf2 = Hlp_GetNpc(slf);

	var oCNpc oth2;
	oth2 = Hlp_GetNpc(oth);

	var oCNpc sub2;
	sub2 = Hlp_GetNpc(sub);

	var int x1;
	var int y1;
	var int z1;
	var int x2;
	var int y2;
	var int z2;
	var int x3;
	var int y3;
	var int z3;

	x1 = slf2._zCVob_trafoObjToWorld[3];
	x2 = oth2._zCVob_trafoObjToWorld[3];
	x3 = sub2._zCVob_trafoObjToWorld[3];
	y1 = slf2._zCVob_trafoObjToWorld[7];
	y2 = oth2._zCVob_trafoObjToWorld[7];
	y3 = sub2._zCVob_trafoObjToWorld[7];
	z1 = slf2._zCVob_trafoObjToWorld[11];
	z2 = oth2._zCVob_trafoObjToWorld[11];
	z3 = sub2._zCVob_trafoObjToWorld[11];

	x2 = subf(x2, x1);
	y2 = subf(y2, y1);
	z2 = subf(z2, z1);

	var int PAx;
	var int PAy;
	var int PAz;

	PAx = subf(x3, x1);
	PAy = subf(y3, y1);
	PAz = subf(z3, z1);

	var int Kx;
	var int Ky;
	var int Kz;

	Kx = subf(mulf(PAy, z2), mulf(PAz, y2));
	Ky = subf(mulf(PAz, x2), mulf(PAx, z2));
	Kz = subf(mulf(PAx, y2), mulf(PAy, x2));

	var int lengthz;
	lengthz = addf(addf(mulf(Kx, Kx), mulf(Ky, Ky)), mulf(Kz, Kz));
	lengthz = sqrtf(lengthz);

	var int lengthn;
	lengthn = addf(addf(mulf(x2, x2), mulf(y2, y2)), mulf(z2, z2));
	lengthn = sqrtf(lengthn);

	return roundf(divf(lengthz, lengthn));
};