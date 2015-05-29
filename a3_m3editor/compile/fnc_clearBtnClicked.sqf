private ['_display', '_yesBtn'];
disableSerialization;

createDialog 'M3EConfirmDialog';
_display = findDisplay 1347;

_yesBtn = _display displayCtrl 1600;
_yesBtn ctrlSetEventHandler ["MouseButtonClick", "_this call M3E_fnc_clear"];