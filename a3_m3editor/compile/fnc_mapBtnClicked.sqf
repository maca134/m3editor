private ['_map'];
disableSerialization;
createDialog 'M3EMapDialog';
_map = (findDisplay 1342) displayCtrl 1340;
_map ctrlAddEventHandler ['MouseButtonDown', '_this call M3E_fnc_onMapClicked'];
_map ctrlAddEventHandler ["Draw",{
	{
		private ['_color', '_bbr', '_p1', '_p2', '_maxWidth', '_maxLength'];
		_color = if (_x == M3E_selectedObject) then {[1,0,0,1]} else {[0,1,0,1]};
		_bbr = boundingBoxReal _x;
		_p1 = _bbr select 0;
		_p2 = _bbr select 1;
		_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
		_maxLength = abs ((_p2 select 1) - (_p1 select 1));
		(_this select 0) drawIcon [
			getText(configFile >> 'CfgVehicles' >> (typeOf _x) >> 'icon'),
			_color,
			getPos _x,
			(_maxWidth * 0.15) * 10^(abs log (ctrlMapScale (_this select 0))),
			(_maxLength * 0.15) * 10^(abs log (ctrlMapScale (_this select 0))),
			getDir _x,
			'',
			0,
			0.1,
			'PuristaMedium',
			'right'
		];
	} foreach M3E_insertedObjects;
	//(_this select 0) drawEllipse [M3E_centerPos, 1, 1, 0, [1,0,0,1], "#(rgb,8,8,3)color(0.5,0,0,1)"];
	//(_this select 0) drawLine [getpos M3E_cameraObj, M3E_centerPos, [0.5,0,0,0.5]];
	(_this select 0) drawIcon [
		'iconMan',
		[0.5,0,0,1],
		getPos M3E_cameraObj,
		24,
		24,
		getDir M3E_cameraObj,
		'Camera',
		0,
		0.1,
		'PuristaMedium',
		'right'
	];
}];
