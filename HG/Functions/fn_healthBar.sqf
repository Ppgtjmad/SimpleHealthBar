#include "HG_Macros.h"
/*
    Author - HoverGuy
    © All Fucks Reserved
*/
if(!(alive player) OR (vehicle player != player) OR (isNull (cursorTarget)) OR !(cursorTarget isKindOf "Man")) exitWith {("HG_HealthBar" call BIS_fnc_rscLayer) cutText ["","PLAIN"];};

private["_curTar","_posH","_screenPosH"];
_curTar = cursorTarget;
_posH = [((_curTar modelToWorld (_curTar selectionPosition "LeftShoulder")) select 0),((_curTar modelToWorld (_curTar selectionPosition "LeftShoulder")) select 1),((_curTar modelToWorld (_curTar selectionPosition "LeftShoulder")) select 2)];
_screenPosH = worldToScreen _posH;

if(isNull HG_SHB_DISP) then 
{
	("HG_HealthBar" call BIS_fnc_rscLayer) cutRsc ["HG_HealthBar","PLAIN"];
};

if((player distance _curTar) < 2) then
{
    if(alive _curTar) then
    {	
	    if((count _screenPosH) > 1) then 
        {
	        private ["_rankIcon","_color"];
			_rankIcon = [_curTar,"texture"] call BIS_fnc_rankParams;
	        if((damage _curTar) <= 0.5) then {_color = [0,0.5,0,1];};
	        if((damage _curTar) > 0.5 AND (damage _curTar < 0.7)) then {_color = [1,1,0,1];};
	        if((damage _curTar) >= 0.7) then {_color = [1,0,0,1];};
	        HG_SHB_PH progressSetPosition (1 - (damage _curTar));
	        HG_SHB_PH ctrlSetTextColor _color;
	        HG_SHB_PH ctrlSetPosition [(_screenPosH select 0)+0.1,(_screenPosH select 1)+0.05];
			HG_SHB_PF progressSetPosition (1 - (getFatigue _curTar));
	        HG_SHB_PF ctrlSetTextColor [0,0,1,1];
	        HG_SHB_PF ctrlSetPosition [(_screenPosH select 0)+0.1,(_screenPosH select 1)+0.09];
	        HG_SHB_TEXT ctrlSetStructuredText parseText format["<t color='#FFFFFF' size='1' align='center' valign='middle'><img image='%1' size='1'></img> %2</t>",_rankIcon,(name _curTar)];
	        HG_SHB_TEXT ctrlSetPosition [(_screenPosH select 0)+0.05,(_screenPosH select 1)-0.015];
			{
			    _x ctrlSetScale 0.8;
				_x ctrlSetFade 0;
				_x ctrlCommit 0;
				_x ctrlShow true;
			} forEach [HG_SHB_PH,HG_SHB_PF,HG_SHB_TEXT];
        };
    } else {
	    {
	        _x ctrlShow false;
	    } forEach [HG_SHB_PH,HG_SHB_PF,HG_SHB_TEXT];
		private _posS = [((_curTar modelToWorld (_curTar selectionPosition "spine3")) select 0),((_curTar modelToWorld (_curTar selectionPosition "spine3")) select 1),((_curTar modelToWorld (_curTar selectionPosition "spine3")) select 2)];
        drawIcon3D[HG_MISSION_ROOT + "HG_SHB\UI\dead.paa",[1,1,1,1],_posS,1.5,1.5,0,"Dead Unit",1,0.03,"TahomaB"];
    };
} else {
    {
	    _x ctrlShow false;
	} forEach [HG_SHB_PH,HG_SHB_PF,HG_SHB_TEXT];
};
