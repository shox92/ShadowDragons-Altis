/*
	File: fn_dataQuery.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the 'authentication' process and sends a request out to
	the server to check for player information.
*/
private["_uid","_side","_sender"];
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
_sender = player;
_uid = getPlayerUID _sender;
_side = playerSide;
cutText[format[localize "STR_Session_Query",_uid],"BLACK FADED"];
0 cutFadeOut 999999999;

[[_uid,_side,_sender],"DB_fnc_queryRequest",false,false] call life_fnc_MP;
waitUntil {life_session_completed_query_one};


// we need this only for Civilians
if (playerSide == civilian) then {
	// fetching the player syndicates after we recived the stuff of player
//	diag_log "PLAYER INFORMATION LOADED";
	_name = player getVariable["realname",name player];
//	diag_log "LOADING SYNDICATE INFORMATIONS";
	[[_uid,_name,_sender],"TON_fnc_fetchSyndicatesOfPlayer",false,false] call life_fnc_MP;

} else {
	life_session_completed = true;
};