/* #Niniri
$[
	1.063,
	["mainmenu",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1000,"background",[1,"",["0.376259 * safezoneW + safezoneX","0.225045 * safezoneH + safezoneY","0.247516 * safezoneW","0.593976 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0.75],[-1,-1,-1,-1],"","-1"],[]],
	[1001,"title",[1,"Main Menu",["0.376226 * safezoneW + safezoneX","0.225045 * safezoneH + safezoneY","0.247549 * safezoneW","0.0219964 * safezoneH"],[-1,-1,-1,-1],[0,0.4,0,1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"btnOpen",[1,"Open",["0.389978 * safezoneW + safezoneX","0.269038 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"btnSave",[1,"Save",["0.389978 * safezoneW + safezoneX","0.335027 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1602,"btnExportSQF",[1,"Export SQF",["0.389978 * safezoneW + safezoneX","0.401016 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1603,"btnExportTB",[1,"Export TB",["0.389978 * safezoneW + safezoneX","0.467005 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1604,"btnClear",[1,"Clear",["0.389993 * safezoneW + safezoneX","0.598996 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1605,"btnDonate",[1,"Donate",["0.389993 * safezoneW + safezoneX","0.686993 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1606,"btnClose",[1,"Close",["0.389993 * safezoneW + safezoneX","0.75299 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1607,"btnExportCFG",[1,"Export CFG",["0.389993 * safezoneW + safezoneX","0.532999 * safezoneH + safezoneY","0.220044 * safezoneW","0.0439928 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/


class M3EMainMenuDialog {
	idd = 1346;
	movingenable = 0;
	enablesimulation = 1;
	class controlsBackground { 
		class background: M3ERscText
		{
			idc = -1;
			x = 0.376259 * safezoneW + safezoneX;
			y = 0.225045 * safezoneH + safezoneY;
			w = 0.247516 * safezoneW;
			h = 0.593976 * safezoneH;
			colorBackground[] = {0,0,0,0.75};
		};
		class title: M3ERscText
		{
			idc = -1;
			text = "Main Menu"; //--- ToDo: Localize;
			x = 0.376226 * safezoneW + safezoneX;
			y = 0.225045 * safezoneH + safezoneY;
			w = 0.247549 * safezoneW;
			h = 0.0219964 * safezoneH;
			colorBackground[] = {0,0.4,0,1};
		};
	};
	class Controls {
		class btnOpen: M3ERscButton
		{
			idc = 1600;
			text = "Open Project"; //--- ToDo: Localize;
			x = 0.389978 * safezoneW + safezoneX;
			y = 0.269038 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
		};
		class btnSave: M3ERscButton
		{
			idc = 1601;
			text = "Save Project"; //--- ToDo: Localize;
			x = 0.389978 * safezoneW + safezoneX;
			y = 0.335027 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
		};
		class btnExportSQF: M3ERscButton
		{
			idc = 1602;
			text = "Export SQF"; //--- ToDo: Localize;
			x = 0.389978 * safezoneW + safezoneX;
			y = 0.401016 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
		};
		class btnExportTB: M3ERscButton
		{
			idc = 1603;
			text = "Export TB"; //--- ToDo: Localize;
			x = 0.389978 * safezoneW + safezoneX;
			y = 0.467005 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
		};
		class btnCopyCFG: M3ERscButton
		{
			idc = 1607;
			text = "Copy 'Epoch' CFG To Clipboard"; //--- ToDo: Localize;
			x = 0.389993 * safezoneW + safezoneX;
			y = 0.532999 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
		};
		class btnClear: M3ERscButton
		{
			idc = 1604;
			text = "Clear"; //--- ToDo: Localize;
			x = 0.389993 * safezoneW + safezoneX;
			y = 0.598996 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
		};
		class btnDonate: M3ERscButton
		{
			idc = 1605;
			text = "Donate"; //--- ToDo: Localize;
			x = 0.389993 * safezoneW + safezoneX;
			y = 0.686993 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
		};
		class btnClose: M3ERscButton
		{
			idc = 1606;
			text = "Close"; //--- ToDo: Localize;
			x = 0.389993 * safezoneW + safezoneX;
			y = 0.75299 * safezoneH + safezoneY;
			w = 0.220044 * safezoneW;
			h = 0.0439928 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1);";
		};
	};
};