if (isNull M3E_selectedObject) exitWith {};
if (M3E_selectedObject in M3E_lockedObjs) then {
	M3E_lockedObjs deleteAt (M3E_lockedObjs find M3E_selectedObject);
} else {
	M3E_lockedObjs pushBack M3E_selectedObject;
};
call M3E_fnc_loadSpawnedList;