private ['_display', '_openBtn', '_saveBtn', '_exportSQFBtn', '_exportTBBtn', '_clearBtn', '_donateBtn', '_copyCFGBtn'];
disableSerialization;

createDialog 'M3EMainMenuDialog';

_display = findDisplay 1346;

_openBtn = _display displayCtrl 1600;
_openBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_openBtnClicked"];

_saveBtn = _display displayCtrl 1601;
_saveBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_saveBtnClicked"];

_exportSQFBtn = _display displayCtrl 1602;
_exportSQFBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_exportSQFBtnClicked"];

_exportTBBtn = _display displayCtrl 1603;
_exportTBBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_exportTBBtnClicked"];

_clearBtn = _display displayCtrl 1604;
_clearBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_clearBtnClicked"];

_donateBtn = _display displayCtrl 1605;
_donateBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_donateBtnClicked"];

_copyCFGBtn = _display displayCtrl 1607;
_copyCFGBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_copyCFGBtnClicked"];
