private ['_display', '_positionATL', '_positionASL', '_direction', '_pitch', '_bank', '_followterrain', '_position'];

_direction = M3E_selectedObject getVariable ['M3E_dir', getDir M3E_selectedObject];
_pitch = M3E_selectedObject getVariable ['M3E_pitch', 0];
_bank = M3E_selectedObject getVariable ['M3E_bank', 0];
_followterrain = M3E_selectedObject getVariable ['M3E_followterrain', false];
_position = M3E_selectedObject getVariable ['M3E_position', getPosATL M3E_selectedObject];
_positionASL = ATLToASL _position;
_display = findDisplay 1345;

private ['_curX', '_curY', '_curZT', '_curZS', '_newX', '_newY', '_newZT', '_newZS'];
_curX = [(_position select 0), 5] call M3E_fnc_roundNum;
_curY = [(_position select 1), 5] call M3E_fnc_roundNum;
_curZT = [(_position select 2), 5] call M3E_fnc_roundNum;
_curZS = [(_positionASL select 2), 5] call M3E_fnc_roundNum;

_newX = parseNumber (ctrlText (_display displayCtrl 1400));
_newY = parseNumber (ctrlText (_display displayCtrl 1401));
_newZT = parseNumber (ctrlText (_display displayCtrl 1402));
_newZS = parseNumber (ctrlText (_display displayCtrl 1403));

if !([_curX, _curY] isEqualTo [_newX, _newY]) then {
	_position set [0, _newX];
	_position set [1, _newY];
};

if (_curZT != _newZT) then {
	_position set [2, _newZT];
};

if (_curZS != _newZS) then {
	_position = ATLToASL _position;
	_position set [2, _newZS];
	_position = ASLToATL _position;
};

M3E_selectedObject setVariable ['M3E_position', _position, true];

_newDir = parseNumber (ctrlText (_display displayCtrl 1406));
_newBank = parseNumber (ctrlText (_display displayCtrl 1407));
_newPitch = parseNumber (ctrlText (_display displayCtrl 1408));

if (_direction != _newDir) then {
	M3E_selectedObject setVariable ['M3E_dir', _newDir, true];
};
if (_pitch != _newPitch) then {
	M3E_selectedObject setVariable ['M3E_pitch', _newPitch, true];
};
if (_bank != _newBank) then {
	M3E_selectedObject setVariable ['M3E_bank', _newBank, true];
};
[M3E_selectedObject] call M3E_fnc_updateObject;
call M3E_fnc_loadProperties;