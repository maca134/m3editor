private ['_classList', '_index', '_class'];

_classList = [1341] call M3E_fnc_getSpawnControl;
_index = lbCurSel _classList;
if (_index == -1) exitWith {};
//_class = ((M3EcfgVehicles select 1) select ((M3EcfgVehicles select 0) find _type)) select _indexC;
_class = _classList lbData _index;

[_class] call M3E_fnc_spawnObject;

((findDisplay 1341) closeDisplay 1);