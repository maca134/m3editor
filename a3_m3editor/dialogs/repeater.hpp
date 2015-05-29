class M3ERepeaterDialog {
	idd = 1343;
	movingenable = 0;
	enablesimulation = 1;
	class controlsBackground { 
		class background: M3ERscText
		{
			idc = -1;
			x = 0.00493602 * safezoneW + safezoneX;
			y = 0.236021 * safezoneH + safezoneY;
			w = 0.137518 * safezoneW;
			h = 0.461963 * safezoneH;
			colorBackground[] = {0,0,0,0.75};
		};
		class mainTitle: M3ERscText
		{
			idc = -1;
			text = "Repeater"; //--- ToDo: Localize;
			x = 0.00493584 * safezoneW + safezoneX;
			y = 0.236021 * safezoneH + safezoneY;
			w = 0.137518 * safezoneW;
			h = 0.0219982 * safezoneH;
			colorBackground[] = {0,0.4,0,1};
		};
		class distanctTxt: M3ERscText
		{
			idc = -1;
			text = "Distance"; //--- ToDo: Localize;
			x = 0.0118117 * safezoneW + safezoneX;
			y = 0.510999 * safezoneH + safezoneY;
			w = 0.0756348 * safezoneW;
			h = 0.0219982 * safezoneH;
		};
		class heightTxt: M3ERscText
		{
			idc = -1;
			text = "Height Mode"; //--- ToDo: Localize;
			x = 0.0118117 * safezoneW + safezoneX;
			y = 0.445004 * safezoneH + safezoneY;
			w = 0.0756348 * safezoneW;
			h = 0.0219982 * safezoneH;
		};
	};
	class Controls {
		class nBtn: M3ERscButton
		{
			idc = 1340;
			text = "N"; //--- ToDo: Localize;
			x = 0.0393153 * safezoneW + safezoneX;
			y = 0.280018 * safezoneH + safezoneY;
			w = 0.0275036 * safezoneW;
			h = 0.0439965 * safezoneH;
		};
		class eBtn: M3ERscButton
		{
			idc = 1341;
			text = "E"; //--- ToDo: Localize;
			x = 0.0668188 * safezoneW + safezoneX;
			y = 0.324014 * safezoneH + safezoneY;
			w = 0.0275036 * safezoneW;
			h = 0.0439965 * safezoneH;
		};
		class sBtn: M3ERscButton
		{
			idc = 1342;
			text = "S"; //--- ToDo: Localize;
			x = 0.0393153 * safezoneW + safezoneX;
			y = 0.368011 * safezoneH + safezoneY;
			w = 0.0275036 * safezoneW;
			h = 0.0439965 * safezoneH;
		};
		class wBtn: M3ERscButton
		{
			idc = 1343;
			text = "W"; //--- ToDo: Localize;
			x = 0.0118117 * safezoneW + safezoneX;
			y = 0.324014 * safezoneH + safezoneY;
			w = 0.0275036 * safezoneW;
			h = 0.0439965 * safezoneH;
		};
		class distanceEdit: M3ERscEdit
		{
			idc = 1346;
			text = "0"; //--- ToDo: Localize;
			x = 0.0118117 * safezoneW + safezoneX;
			y = 0.532997 * safezoneH + safezoneY;
			w = 0.123766 * safezoneW;
			h = 0.0329974 * safezoneH;
		};
		class undoBtn: M3ERscButton
		{
			idc = 1344;
			text = "Undo"; //--- ToDo: Localize;
			x = 0.0118117 * safezoneW + safezoneX;
			y = 0.587993 * safezoneH + safezoneY;
			w = 0.123766 * safezoneW;
			h = 0.0439965 * safezoneH;
		};
		class backBtn: M3ERscButton
		{
			idc = 1345;
			text = "Close"; //--- ToDo: Localize;
			x = 0.0118117 * safezoneW + safezoneX;
			y = 0.642989 * safezoneH + safezoneY;
			w = 0.123766 * safezoneW;
			h = 0.0439965 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1);";
		};
		class heightSelect: M3ERscCombo
		{
			idc = 1347;
			x = 0.0118117 * safezoneW + safezoneX;
			y = 0.467003 * safezoneH + safezoneY;
			w = 0.123766 * safezoneW;
			h = 0.0219982 * safezoneH;
		};
		class uBtn: M3ERscButton
		{
			idc = 1348;
			text = "U"; //--- ToDo: Localize;
			x = 0.108074 * safezoneW + safezoneX;
			y = 0.291017 * safezoneH + safezoneY;
			w = 0.0275036 * safezoneW;
			h = 0.0439965 * safezoneH;
		};
		class dBtn: M3ERscButton
		{
			idc = 1349;
			text = "D"; //--- ToDo: Localize;
			x = 0.108074 * safezoneW + safezoneX;
			y = 0.357011 * safezoneH + safezoneY;
			w = 0.0275036 * safezoneW;
			h = 0.0439965 * safezoneH;
		};
	};
};