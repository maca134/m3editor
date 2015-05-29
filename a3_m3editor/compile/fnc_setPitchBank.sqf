private ["_object","_vectorDirAndUp"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param; 
_vectorDirAndUp = [_object] call M3E_fnc_vectorDirAndUp;
_object setVectorDirAndUp _vectorDirAndUp; 