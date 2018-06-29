Diag_log "Überprüfen ob Ampel bereits erstellt sind";
if (!isNil {bank_obj getvariable "ampel"}) exitwith {diag_log "Ampeln bereits Erstellt"; [] spawn HC_fnc_ampelon;};
_tickTime = diag_tickTime;
private ["_nok1","_nok2","_nok3","_nok4"];
nok1 = createVehicle ["Land_City_Pillar_F",[3610.56,13129.5,0],[],0, "CAN_COLLIDE"];
nok1 setdir 278.201;
nok1 allowdamage false;
nok2 = createVehicle ["Land_City_Pillar_F",[3628.9,13141.1,0],[],0, "CAN_COLLIDE"];
nok2 setdir 97.347;
nok2 allowdamage false;
nok3 = createVehicle ["Land_City_Pillar_F",[3625.81,13130.2,0],[],0, "CAN_COLLIDE"];
nok3 setdir 187.017;
nok3 allowdamage false;
nok4 = createVehicle ["Land_City_Pillar_F",[3614.59,13145.6,0],[],0, "CAN_COLLIDE"];
nok4 setdir 11.1387;
nok4 allowdamage false;

diag_log format["Zeit zum Ampeln Erstellen: %1 (in seconds)",(diag_tickTime - _tickTime)];
bank_obj setvariable ["ampel",true,true];
[] spawn HC_fnc_ampelon;
