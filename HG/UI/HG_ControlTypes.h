/*
    Defines macros
*/
#define HG_INFINITE             1e+1000

/*
    Defines dialog resources
*/
class HG_RscProgress
{
	access = 0;
	type = 8;
	style = 0x00;
	default = 0;
	blinkingPeriod = 0;

	texture = "#(argb,8,8,3)color(1,1,1,1)";
	colorBar[] = {1,1,1,1};
	colorFrame[] = {0,0,0,1};
	
	tooltipColorShade[] = {0,0,0,1};
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
};

class HG_RscStructuredText
{
	default = 0;
	type = 13;
	style = 16;
	text = "";
	size = 0.04;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
	shadow = 1;
	
	class Attributes 
	{
		font = "PuristaMedium";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "center";
		valign = "middle";
		shadow = 1;
	};
};
