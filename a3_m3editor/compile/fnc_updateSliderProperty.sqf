private ['_display'];
_display = findDisplay 1345;
(_display displayCtrl 1406) ctrlSetText str (sliderPosition (_display displayCtrl 1900));
['d', 1] call M3E_fnc_updateProperty;
true