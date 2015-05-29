class CfgPatches {
	class A3_m3editor {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgFunctions {
	class M3E {
		class M3Editor {
			file = "\x\addons\a3_m3editor\init";
			class init {
				postInit = 1;
			};
		};
	};
};

#include "\x\addons\a3_m3editor\dialogs\defines.hpp"
#include "\x\addons\a3_m3editor\dialogs\editor.hpp"
#include "\x\addons\a3_m3editor\dialogs\spawn.hpp"
#include "\x\addons\a3_m3editor\dialogs\map.hpp"
#include "\x\addons\a3_m3editor\dialogs\repeater.hpp"
#include "\x\addons\a3_m3editor\dialogs\help.hpp"
#include "\x\addons\a3_m3editor\dialogs\properties.hpp"
#include "\x\addons\a3_m3editor\dialogs\mainmenu.hpp"
#include "\x\addons\a3_m3editor\dialogs\confirm.hpp"