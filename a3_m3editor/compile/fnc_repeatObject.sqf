private ['_direction', '_bbr', '_p1', '_p2', '_maxWidth', '_maxLength', '_heightSelect', '_maxHeight', '_offset', '_position', '_newObject', '_distance'];
_direction = _this select 0;
_bbr = boundingBoxReal M3E_selectedObject;
_p1 = _bbr select 0;
_p2 = _bbr select 1;
_distance = parseNumber (ctrlText 1346);
_maxWidth = (abs ((_p2 select 0) - (_p1 select 0))) + _distance;
_maxLength = (abs ((_p2 select 1) - (_p1 select 1))) + _distance;
_maxHeight = (abs ((_p2 select 2) - (_p1 select 2))) + _distance;
_offset = switch (_direction) do {
	case 0: {[0, _maxLength, 0]};
	case 90: {[_maxWidth, 0, 0]};
	case 180: {[0, -_maxLength, 0]};
	case 270: {[-_maxWidth, 0, 0]};
	case -1: {[0, 0, _maxHeight]};
	case -2: {[0, 0, -_maxHeight]};
};

[typeOf M3E_selectedObject] call M3E_fnc_spawnObject;
private ['_newObject', '_pos'];
_newObject = (M3E_insertedObjects select ((count M3E_insertedObjects)-1));

_position = M3E_selectedObject modelToWorld _offset;

_heightSelect = (findDisplay 1343) displayCtrl 1347;

if !(_direction in [-1,-2]) then {
	if ((lbCurSel _heightSelect) == 0) then {
		_position set [2, (getPosATL M3E_selectedObject) select 2];
	} else {
		_position set [2, (getPosASL M3E_selectedObject) select 2];
		_position = ASLToATL _position;
	};
};

_newObject setVariable ['M3E_dir', getDir M3E_selectedObject, true];
_newObject setVariable ['M3E_pitch', 0, true];
_newObject setVariable ['M3E_bank', 0, true];
_newObject setVariable ['M3E_followterrain', (M3E_selectedObject getVariable ['M3E_followterrain', false]), true];
_newObject setVariable ['M3E_position', _position, true];

[_newObject] call M3E_fnc_updateObject;

M3E_objList pushBack _newObject;
M3E_selectedObject = _newObject;
call M3E_fnc_loadObjectInfo;
call M3E_fnc_loadSpawnedList;