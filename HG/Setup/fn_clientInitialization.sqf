/*
    Author - HoverGuy
    © All Fucks Reserved
*/

/*
    Mission root, needed for drawIcon3D command (courtesy of Killzone_Kid)
*/
HG_MISSION_ROOT = call 
{
    private "_arr";
    _arr = toArray __FILE__;
    _arr resize (count _arr - 19);
    toString _arr
};

/*
    Init health bar & evh
*/
("HG_HealthBar" call BIS_fnc_rscLayer) cutRsc ["HG_HealthBar","PLAIN"];
HG_ME_DRAW3D = addMissionEventHandler ["Draw3D",{[] call HG_fnc_healthBar}];
