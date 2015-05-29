private ['_obj'];
if (count M3E_objList < 1) exitWith {};
_obj = M3E_objList deleteAt (count M3E_objList - 1);
M3E_insertedObjects deleteAt (M3E_insertedObjects find _obj);
deleteVehicle _obj;
if (count M3E_objList > 0) then {
	M3E_selectedObject = M3E_insertedObjects select ((count M3E_insertedObjects) - 1);
} else {
	M3E_selectedObject = M3E_originObj;
};

call M3E_fnc_loadObjectInfo;
call M3E_fnc_loadSpawnedList;