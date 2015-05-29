if (!isNil 'M3E_InitStarted') exitWith {};
M3E_InitStarted = true;

if (isMultiplayer && isServer) exitWith {
	"M3E_setowner" addPublicVariableEventHandler {
		private ['_object'];
		_object = (_this select 1) select 0;
		_owner = (_this select 1) select 1;
		// Doesnt work in current ARMA3 version, fixed in next
		_object setOwner (owner _owner);
	};
};

M3E_fnc_clientInit			= compile preprocessFileLineNumbers '\x\addons\a3_m3editor\init\fn_clientInit.sqf';

{
	private ['_name', '_code'];
	_name = format['M3E_fnc_%1', _x];
	_code = compile preprocessFileLineNumbers format['\x\addons\a3_m3editor\compile\fnc_%1.sqf', _x];
	missionNamespace setVariable [_name, _code];
} foreach [
	'clearBtnClicked',
	'deleteBtnClicked',
	'donateBtnClicked',
	'saveBtnClicked',
	'exportSQFBtnClicked',
	'getAllVehicles',
	'getEditorControl',
	'getSpawnControl',
	'helpBtnClicked',
	'openBtnClicked',
	'loadClassList',
	'loadClassPreview',
	'loadObjectInfo',
	'loadSpawnedList',
	'lockBtnClicked',
	'mapBtnClicked',
	'nudgeObject',
	'onEachFrame',
	'onKeyDown',
	'onKeyUp',
	'onMapClicked',
	'onMouseButtonDown',
	'onMouseButtonUp',
	'onMouseDblClick',
	'onMouseMoving',
	'onMouseZChanged',
	'openFile',
	'physicsBtnClicked',
	'positionAtHeight',
	'repeatBtnClicked',
	'repeatObject',
	'repeatUndo',
	'resetBtnClicked',
	'saveFile',
	'selectObject',
	'setSelectedObject',
	'setupEditor',
	'showSpawnDialog',
	'spawnInsertBtn',
	'spawnObject',
	'transformPosition',
	'subArr',
	'updateSliderProperty',
	'scrollUpdateProperty',
	'updateProperty',
	'roundNum',
	'loadProperties',
	'mainmenuBtnClicked',
	'exportTBBtnClicked',
	'clear',
	'strFindLast',
	'getModel',
	'fixAngle',
	'updatePropBtn',
	'updateObject',
	'vectorDirAndUp',
	'setPitchBank',
	'updatePropSlider',
	'updatePropCheck',
	'copyCFGBtnClicked'
];

// Load camera crap
{
	private ['_name', '_code'];
	_name = format['M3E_fnc_cam_%1', _x];
	_code = compile preprocessFileLineNumbers format['\x\addons\a3_m3editor\compile\camera\fnc_%1.sqf', _x];
	missionNamespace setVariable [_name, _code];
} foreach [
	'create',
	'destroy',
	'onKeyDown',
	'vector',
	'move',
	'rcmoving',
	'position',
	'mousez'
];

M3E_pressedKeys 			= [];
M3E_lockedObjs	 			= [];
M3E_selectedObject 			= objNull;
M3E_copiedObject 			= objNull;
M3E_classPreview 			= objNull;
M3E_copiedObjectDir 		= 0;
M3E_startDragOffset 		= [];
M3E_startMousePosition 		= [];
M3E_objectStartPosition 	= [];
M3E_lmbDown 				= false;
M3E_rmbDown 				= false;
M3E_ignoreClasses 			= ['Logic'];
M3E_ignoreTypes 			= [
	'',
	'Mines', 
	'Locations', 
	'Ammo', 
	'Intel', 
	'Misc', 
	'Respawn',
	'Sides',
	'Backpacks',
	'Emitters'
];
M3E_insertedObjects 	= [];

[] spawn M3E_fnc_clientInit;