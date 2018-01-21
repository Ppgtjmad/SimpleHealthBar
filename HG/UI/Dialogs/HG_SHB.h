#include "..\HG_IDCS.h"
/*
    Author - HoverGuy
	© All Fucks Reserved
*/

class HG_HealthBar
{
	idd = HG_NO_IDC;
	duration = HG_INFINITE;
	fadeIn = 0;
	fadeOut = 0;
	name = "HG_HealthBar";
	onLoad = "uiNamespace setVariable['HG_HealthBar',_this select 0]";
    onUnload = "uiNamespace setVariable['HG_HealthBar',displayNull]";
	onDestroy =  "uiNamespace setVariable['HG_HealthBar',displayNull]";
	
	class ControlsBackground
	{
		class StructuredText: HG_RscStructuredText
		{
			idc = HG_SHB_TEXT_IDC;
		    x = 0.225;
			y = 0.4;
			w = 0.12375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ProgressHealth: HG_RscProgress
		{
			idc = HG_SHB_PH_IDC;
		    x = 0.275;
			y = 0.44;
			w = 0.0825 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ProgressFatigue: HG_RscProgress
		{
			idc = HG_SHB_PF_IDC;
			x = 0.275;
			y = 0.5;
			w = 0.0825 * safezoneW;
			h = 0.011 * safezoneH;
		};
	};
};
