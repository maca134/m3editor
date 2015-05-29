class M3EMapDialog {
	idd = 1342;
	movingenable = 0;
	enablesimulation = 1;
	class controlsBackground { 
		class spawnBg: M3ERscText
		{
			idc = -1;
			text = "Map"; //--- ToDo: Localize;
			x = 0.225012 * safezoneW + safezoneX;
			y = 0.224956 * safezoneH + safezoneY;
			w = 0.549975 * safezoneW;
			h = 0.0220035 * safezoneH;
			colorBackground[] = {0,0.4,0,1};
		};
	};
	class Controls {
		class editorMap: M3ERscMapControl
		{
			idc = 1340;
			x = 0.225012 * safezoneW + safezoneX;
			y = 0.246959 * safezoneH + safezoneY;
			w = 0.549975 * safezoneW;
			h = 0.528085 * safezoneH;
		};
		class spawnCancelBtn: M3ERscButton
		{
			idc = -1;
			text = "Close"; //--- ToDo: Localize;
			x = 0.692491 * safezoneW + safezoneX;
			y = 0.775044 * safezoneH + safezoneY;
			w = 0.0824963 * safezoneW;
			h = 0.0440071 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1);";
		};
	};
};