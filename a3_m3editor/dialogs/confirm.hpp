
class M3EConfirmDialog {
	idd = 1347;
	movingenable = 0;
	enablesimulation = 1;
	class controlsBackground { 
		class background: M3ERscText
		{
			idc = -1;
			x = 0.3625 * safezoneW + safezoneX;
			y = 0.401016 * safezoneH + safezoneY;
			w = 0.275 * safezoneW;
			h = 0.153975 * safezoneH;
			colorBackground[] = {0,0,0,0.75};
		};
		class title: M3ERscText
		{
			idc = -1;
			text = "Confirm"; //--- ToDo: Localize;
			x = 0.3625 * safezoneW + safezoneX;
			y = 0.401016 * safezoneH + safezoneY;
			w = 0.275 * safezoneW;
			h = 0.0219964 * safezoneH;
			colorBackground[] = {0,0.4,0,1};
		};
	};
	class Controls {
		class confirmText: M3ERscText
		{
			idc = 1002;
			text = "Are you sure you want to do this?"; //--- ToDo: Localize;
			x = 0.369375 * safezoneW + safezoneX;
			y = 0.434011 * safezoneH + safezoneY;
			w = 0.26125 * safezoneW;
			h = 0.054991 * safezoneH;
		};
		class btnYes: M3ERscButton
		{
			idc = 1600;
			text = "Yes"; //--- ToDo: Localize;
			x = 0.369375 * safezoneW + safezoneX;
			y = 0.510998 * safezoneH + safezoneY;
			w = 0.089375 * safezoneW;
			h = 0.0329946 * safezoneH;
		};
		class btnNo: M3ERscButton
		{
			idc = 1601;
			text = "No"; //--- ToDo: Localize;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.510998 * safezoneH + safezoneY;
			w = 0.089375 * safezoneW;
			h = 0.0329946 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1);";
		};
	};
};