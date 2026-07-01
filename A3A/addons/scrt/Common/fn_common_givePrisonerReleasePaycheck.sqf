//	Author: Socrates
// 
//	Description:
//	Adds payment on player account for released enemy's POW.
//
//	Returns:
//	Nothing
//
// 	How to use: 
// 	[player, Occupants] call SCRT_fnc_common_givePrisonerReleasePaycheck;
//

params ["_playerX", "_side"];

//Invaders have no agreements with IDAP, and rebels are not recognized by international organizations before war level 4
if(_side != Occupants || {tierWar < 4}) exitWith {};

private _releasePaycheck = switch (aggressionLevelOccupants) do {
    case 1: {
        125;
    };
    case 2: {
        100;
    };
    case 3: {
        50;
    };
    case 4: {
        25;
    };
    default {
        0;
    };
};

if(_releasePaycheck > 0) then {
    [_playerX,_releasePaycheck] spawn {
        params ["_playerX", "_releasePaycheck"];

        private _moneyMultiplier = missionNamespace getVariable ["moneyMultiplier", 100];
        if ((_moneyMultiplier != 100) && (_releasePaycheck > 0)) then {
            _releasePaycheck = round(_releasePaycheck * _moneyMultiplier / 100);
            if ((_releasePaycheck == 0) && (_moneyMultiplier > 0)) then {_releasePaycheck = 1};
        };

        _timeOut = time + 120;
        waitUntil { time > _timeOut; };

        _playerX setVariable ["moneyX", ((_playerX getVariable ["moneyX", 0]) + _releasePaycheck) max 0, true];
        _nickname = name _playerX;
        _textX = format [
            localize "STR_comms_mp_prisoner_release",
            _nickname,  
            _releasePaycheck,
            A3A_faction_civ get "currencySymbol"
        ];

        [petros,"income",_textX] remoteExec ["A3A_fnc_commsMP", _playerX];
    };
};