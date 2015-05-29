M3E_insertedObjects = M3E_insertedObjects - [M3E_selectedObject];
deleteVehicle M3E_selectedObject;
M3E_selectedObject = objNull;
call M3E_fnc_loadObjectInfo;
call M3E_fnc_loadSpawnedList;