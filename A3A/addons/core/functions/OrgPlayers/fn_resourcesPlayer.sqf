params ["_moneyX", ["_hasSound", false]];

private _moneyMultiplier = missionNamespace getVariable ["moneyMultiplier", 100];
if ((_moneyX > 0) && (_moneyMultiplier != 100)) then {
    _moneyX = round (_moneyX * _moneyMultiplier / 100);
    if ((_moneyX == 0) && (_moneyMultiplier > 0)) then {_moneyX = 1};
};

if (_hasSound && {_moneyX > 0}) then {
	playSound "3DEN_notificationDefault";
};

_moneyX = _moneyX + (player getVariable "moneyX");
if (_moneyX < 0) then {_moneyX = 0};

player setVariable ["moneyX",_moneyX,true];
[] spawn A3A_fnc_statistics;

true
