private ['_ctrl', '_help', '_editorArea', '_spawnBtn', '_spawnedList', '_resetBtn', '_deleteBtn', '_repeatBtn', '_lockBtn', '_physicsBtn', '_helpBtn', '_mainmenuBtn', '_mapBtn', '_donateBtn'];
disableSerialization;

if !(profileNamespace getVariable ['M3E_Opened', false]) then {
	createDialog 'M3EHelpDialog';
	_ctrl = (findDisplay 1344) displayCtrl 1340;
	_help = "<t font='PuristaMedium' size='2'>Macca's 3D Editor Help</t><br/><br/>";
	_help = _help + "<t font='PuristaMedium' size='1.1'>It appears to be the first time you have opened M3Editor. First thank you for trying out my editor!</t><br /><br />";
	_help = _help + "<t font='PuristaBold' size='1.5' color='#bb0000'>Please ensure you have unblocked the ARMA2NET dlls before saving or the game will crash!</t><br /><br />";
	_help = _help + "<t font='PuristaMedium' size='1.1'>Please bare in mind this editor is still in development and if you have any issues please contact me at maca134@gmail.com.</t><br />";		
	_help = _help + "<t font='PuristaMedium' size='1.1'>- maca134</t><br />";		
	_ctrl ctrlSetStructuredText parseText _help;
	waitUntil {!dialog};
	profileNamespace setVariable ['M3E_Opened', true];
	saveProfileNamespace;
};

["M3E_fnc_onEachFrame", "onEachFrame", M3E_fnc_onEachFrame] call BIS_fnc_addStackedEventHandler;

createDialog 'M3EEditorDialog';
M3E_keyDownEH = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call M3E_fnc_onKeyDown"];
M3E_keyUpEH = (findDisplay 46) displayAddEventHandler ["KeyUp", "_this call M3E_fnc_onKeyUp"];

_editorArea = [1343] call M3E_fnc_getEditorControl;
_editorArea ctrlSetEventHandler ["MouseZChanged", "_this call M3E_fnc_onMouseZChanged"];
_editorArea ctrlSetEventHandler ["MouseButtonDown", "_this call M3E_fnc_onMouseButtonDown"];
_editorArea ctrlSetEventHandler ["MouseButtonUp", "_this call M3E_fnc_onMouseButtonUp"];
_editorArea ctrlSetEventHandler ["MouseMoving", "_this call M3E_fnc_onMouseMoving"];
_editorArea ctrlSetEventHandler ["MouseButtonDblClick", "_this call M3E_fnc_onMouseDblClick"];

_spawnBtn = [1340] call M3E_fnc_getEditorControl;
_spawnBtn ctrlSetEventHandler ["MouseButtonDown", "_this call M3E_fnc_showSpawnDialog"];

call M3E_fnc_loadSpawnedList;
_spawnedList = [1341] call M3E_fnc_getEditorControl;
_spawnedList ctrlSetEventHandler ["MouseButtonDblClick", "_this call M3E_fnc_setSelectedObject"];

_resetBtn = [1344] call M3E_fnc_getEditorControl;
_resetBtn ctrlEnable false;
_resetBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_resetBtnClicked"];

_deleteBtn = [1345] call M3E_fnc_getEditorControl;
_deleteBtn ctrlEnable false;
_deleteBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_deleteBtnClicked"];

_repeatBtn = [1352] call M3E_fnc_getEditorControl;
_repeatBtn ctrlEnable false;
_repeatBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_repeatBtnClicked"];

_lockBtn = [1353] call M3E_fnc_getEditorControl;
_lockBtn ctrlEnable false;
_lockBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_lockBtnClicked"];

_mainmenuBtn = [1346] call M3E_fnc_getEditorControl;
_mainmenuBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_mainmenuBtnClicked"];

_mapBtn = [1351] call M3E_fnc_getEditorControl;
_mapBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_mapBtnClicked"];

_donateBtn = [1354] call M3E_fnc_getEditorControl;
_donateBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_donateBtnClicked"];

_helpBtn = [1355] call M3E_fnc_getEditorControl;
_helpBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_helpBtnClicked"];

_physicsBtn = [1356] call M3E_fnc_getEditorControl;
_physicsBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_physicsBtnClicked"];

call M3E_fnc_cam_create;

// hack to make selection work on an epoch server...
if (isMultiplayer && !isNil 'EPOCH_onEachFrame') then {
	while {dialog} do {
		onEachFrame {
			call M3E_fnc_onEachFrame;
			call EPOCH_onEachFrame;
		};
		uiSleep 0.01;
	};
};

[] spawn {
	waitUntil {uiSleep 0.1; !dialog};
	player hideObject false;
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", M3E_keyDownEH];
	(findDisplay 46) displayRemoveEventHandler ["KeyUp", M3E_keyUpEH];
	["M3E_fnc_onEachFrame", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
	call M3E_fnc_cam_destroy;
};