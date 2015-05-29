class M3EEditorDialog {
	idd = 1340;
	movingenable = 0;
	enablesimulation = 1;
	class controlsBackground { 
		class sidebarBg: M3ERscText
		{
			idc = -1;
			x = 0.83686 * safezoneW + safezoneX;
			y = 0.0269238 * safezoneH + safezoneY;
			w = 0.164993 * safezoneW;
			h = 0.979158 * safezoneH;
			colorBackground[] = {0,0,0,0.75};
		};
	};
	class Controls {
		class titleBar: M3ERscText
		{
			idc = 1339;
			text = "Macca's 3D Editor"; //--- ToDo: Localize;
			x = -0.00185223 * safezoneW + safezoneX;
			y = -0.00608147 * safezoneH + safezoneY;
			w = 1.0037 * safezoneW;
			h = 0.0330053 * safezoneH;
			colorBackground[] = {0,0.4,0,1};
		};
		class insertVehicleBtn: M3ERscButton
		{
			idc = 1340;
			text = "Insert Object"; //--- ToDo: Localize;
			x = 0.843734 * safezoneW + safezoneX;
			y = 0.0379256 * safezoneH + safezoneY;
			w = 0.151243 * safezoneW;
			h = 0.0440071 * safezoneH;
		};
		class objectList: M3ERscListbox
		{
			idc = 1341;
			x = 0.843734 * safezoneW + safezoneX;
			y = 0.0929345 * safezoneH + safezoneY;
			w = 0.151243 * safezoneW;
			h = 0.517083 * safezoneH;
		};
		class mouseCaptureArea: M3ERscListbox
		{
			idc = 1343;
			x = 0.00502247 * safezoneW + safezoneX;
			y = 0.0379256 * safezoneH + safezoneY;
			w = 0.824963 * safezoneW;
			h = 0.886152 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class selectedInfo: M3ERscStructuredText
		{
			idc = 1342;
			text = ""; //--- ToDo: Localize;
			x = 0.843734 * safezoneW + safezoneX;
			y = 0.621019 * safezoneH + safezoneY;
			w = 0.151243 * safezoneW;
			h = 0.15 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};

		class repeatVehicleBtn: M3ERscButton
		{
			idc = 1352;
			text = "Repeat Object"; //--- ToDo: Localize;
			x = 0.843734 * safezoneW + safezoneX;
			y = 0.771019 * safezoneH + safezoneY;
			w = 0.151243 * safezoneW;
			h = 0.04 * safezoneH;
		};
		class resetVehicleBtn: M3ERscButton
		{
			idc = 1344;
			text = "Reset Object"; //--- ToDo: Localize;
			x = 0.843734 * safezoneW + safezoneX;
			y = 0.821019 * safezoneH + safezoneY;
			w = 0.151243 * safezoneW;
			h = 0.04 * safezoneH;
		};
		class lockVehicleBtn: M3ERscButton
		{
			idc = 1353;
			text = "Lock Object"; //--- ToDo: Localize;
			x = 0.843734 * safezoneW + safezoneX;
			y = 0.871019 * safezoneH + safezoneY;
			w = 0.151243 * safezoneW;
			h = 0.04 * safezoneH;
		};
		class deleteVehicleBtn: M3ERscButton
		{
			idc = 1345;
			text = "Delete Object"; //--- ToDo: Localize;
			x = 0.843734 * safezoneW + safezoneX;
			y = 0.921019 * safezoneH + safezoneY;
			w = 0.151243 * safezoneW;
			h = 0.04 * safezoneH;
		};
		class mainMenuBtn: M3ERscButton
		{
			idc = 1346;
			text = "Main Menu"; //--- ToDo: Localize;
			x = 0.01 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.07 * safezoneH;
		};
		class physicsBtn: M3ERscButton
		{
			idc = 1356;
			text = "Physics"; //--- ToDo: Localize;
			x = 0.4 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.07 * safezoneH;
		};

		class mapBtn: M3ERscButton
		{
			idc = 1351;
			text = "Map"; //--- ToDo: Localize;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.07 * safezoneH;
		};

		class helpBtn: M3ERscButton
		{
			idc = 1355;
			text = "Help"; //--- ToDo: Localize;
			x = 0.6 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.07 * safezoneH;
		};

		class donateBtn: M3ERscButton
		{
			idc = 1354;
			text = "Donate"; //--- ToDo: Localize;
			x = 0.7 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.09 * safezoneW;
			h = 0.07 * safezoneH;
		};
	};
};
