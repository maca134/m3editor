class M3ESpawnDialog {
	idd = 1341;
	movingenable = 0;
	enablesimulation = 1;
	class controlsBackground { 
		class spawnBg: M3ERscText
		{
			idc = -1;
			x = 0.025012 * safezoneW + safezoneX;
			y = 0.224956 * safezoneH + safezoneY;
			w = 0.316236 * safezoneW;
			h = 0.550089 * safezoneH;
			colorBackground[] = {0,0,0,0.75};
		};
		class spawnTitle: M3ERscText
		{
			idc = -1;
			text = "Spawn Object"; //--- ToDo: Localize;
			x = 0.025012 * safezoneW + safezoneX;
			y = 0.224956 * safezoneH + safezoneY;
			w = 0.316236 * safezoneW;
			h = 0.0220035 * safezoneH;
			colorBackground[] = {0,0.4,0,1};
		};
	};
	class Controls {
		class spawnTypeSelect: M3ERscCombo
		{
			idc = 1340;
			x = 0.031887 * safezoneW + safezoneX;
			y = 0.257961 * safezoneH + safezoneY;
			w = 0.302486 * safezoneW;
			h = 0.0220035 * safezoneH;
		};
		class spawnList: M3ERscListbox
		{
			idc = 1341;
			x = 0.031887 * safezoneW + safezoneX;
			y = 0.290966 * safezoneH + safezoneY;
			w = 0.302486 * safezoneW;
			h = 0.418067 * safezoneH;
		};
		class spawnInsertBtn: M3ERscButton
		{
			idc = 1342;
			text = "Insert"; //--- ToDo: Localize;
			x = 0.258752 * safezoneW + safezoneX;
			y = 0.720035 * safezoneH + safezoneY;
			w = 0.0756216 * safezoneW;
			h = 0.0440071 * safezoneH;
		};
		class spawnCancelBtn: M3ERscButton
		{
			idc = 1343;
			text = "Cancel"; //--- ToDo: Localize;
			x = 0.031887 * safezoneW + safezoneX;
			y = 0.720035 * safezoneH + safezoneY;
			w = 0.0756216 * safezoneW;
			h = 0.0440071 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1);";
		};
	};
};