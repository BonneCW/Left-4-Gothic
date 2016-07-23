FUNC VOID StartRain()
{
	//MEM_InitGlobalInst();
    
	MEM_SkyController.rainFX_timeStartRain = FLOATNULL;

	MEM_SkyController.rainFX_timeStopRain = FLOATEINS;
};

FUNC VOID StopRain()
{
	//MEM_InitGlobalInst();
    
	MEM_SkyController.rainFX_timeStartRain = FLOATNULL;

	MEM_SkyController.rainFX_timeStopRain = FLOATNULL;
};