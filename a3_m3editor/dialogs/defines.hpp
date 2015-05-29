
class M3EComboScrollBar {
	width = 0;
	height = 0;
	scrollSpeed = 0.01;
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; 
	color[] = {1,1,1,1};
};

class M3ERscText {
	access = 0;
	idc = -1;
	type = 0;
	style = 0;
	linespacing = 1;
	shadow = 0;
	font = "PuristaMedium";
	text = "";
	sizeEx = 0.03;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};

class M3ERscFrame {
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "PuristaMedium";
	sizeEx = 0.02;
	text = "";
};

class M3ERscListbox {
	access = 0;
	type = 5;
	style = 0;
	w = 0.4;
	h = 0.4;
	font = "PuristaMedium";
	sizeEx = 0.03;
	rowHeight = 0.04;
	colorText[] = {1,1,1,1};
	colorScrollbar[] = {1,1,1,1};
	colorSelect[] = {0,0,0,1};
	colorSelect2[] = {1,0.5,0,1};
	colorSelectBackground[] = {0.6,0.6,0.6,1};
	colorSelectBackground2[] = {0.2,0.2,0.2,1};
	colorBackground[] = {0,0,0,1};
	colorDisabled[] = {1,1,1,0.5};
	maxHistoryDelay = 1.0;
	soundSelect[] = {"",0.1,1};
	period = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,0,0,1)";
	arrowFull = "#(argb,8,8,3)color(1,0,0,1)";
	shadow = 0;
	class ListScrollBar {
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
		border = "#(argb,8,8,3)color(1,1,1,1)";
		shadow = 0;
	};
};

class M3ERscCombo {
	access = 0;
	idc = -1;
	type = 4;
	style = 0;
	default = 0;
	blinkingPeriod = 0;

	colorBackground[] = {0.2,0.2,0.2,1};
	colorSelectBackground[] = {0,0.4,0,1};

	sizeEx = 0.03;
	font = "PuristaMedium";
	shadow = 0;
	colorText[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.5};
	colorSelect[] = {1,1,1,1};

	pictureColor[] = {1,0.5,0,1};
	pictureColorSelect[] = {1,1,1,1};
	pictureColorDisabled[] = {1,1,1,0.5};

	tooltip = "";
	tooltipColorShade[] = {0,0,0,1};
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};

	wholeHeight = 0.4;
	maxHistoryDelay = 1;

	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";

	soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
	soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
	soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};

	class ComboScrollBar
	{
		width = 0;
		height = 0;
		scrollSpeed = 0.01;

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";

		color[] = {1,1,1,1};
	};
};

class M3ERscStructuredText {
	idc = -1; 
	type = 13; 
	style = 0;           
	colorBackground[] = { 0,0.4,0,1 }; 
	x = 0.1; 
	y = 0.1; 
	w = 0.3; 
	h = 0.1; 
	size = 0.03;
	text = "";
	class Attributes {
		font = "PuristaMedium";
		color = "#FFFFFF";
		align = "left";
		valign = "top";
		shadow = false;
		shadowColor = "#ff0000";
		size = "1";
	};
};

class M3ERscButton {
	access = 0;
	type = 1;
	style = 0;
	x = 0; y = 0; w = 0.3; h = 0.1;
	text = "";
	font = "PuristaMedium";
	sizeEx = 0.04;
	colorText[] = {1,1,1,1};
	colorDisabled[] = {0,0,0,0};
	colorBackground[] = {0,0,0,1};
	colorBackgroundDisabled[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0.4,0,1};
	offsetX = 0.004;
	offsetY = 0.004;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorFocused[] = {0,0,0,1};
	colorShadow[] = {0,0,0,0};
	shadow = 0;
	colorBorder[] = {0,0,0,0};
	borderSize = 0;
	soundEnter[] = {"",0.1,1};
	soundPush[] = {"",0.1,1};
	soundClick[] = {"",0.1,1};
	soundEscape[] = {"",0.1,1};
};

class M3ERightClickBtn : M3ERscButton {
	w = 0.1 * safezoneW;
	h = 0.05 * safezoneH;
	x = 0 * safezoneW + safezoneX;
	y = 0 * safezoneH + safezoneY;
};

class M3ERscSlider {
	idc = -1; 
	type = 3; 
	style = 0x400; 
	x = 0.4; 
	y = 0.2; 
	w = 0.3; 
	h = 0.025; 
	color[] = { 1, 1, 1, 1 }; 
	coloractive[] = { 1, 0, 0, 0.5 };
};

class M3ERscPicture {
	access = 0;
	type = 0;
	idc = -1;
	style = 48;//ST_PICTURE
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "PuristaMedium";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
};

class M3ERscMapControl {
	access=0;
	idc=11;
	type=101;
	style=0x30;
	colorOutside[]={0,0,0,1};
	colorRailWay[]={0.8,0.2,0,1};
	colorTracks[]={0.84,0.76,0.65,0.15};
	colorRoads[]={0.7,0.7,0.7,1};
	colorMainRoads[]={0.9,0.5,0.3,1};
	colorTracksFill[]={0.84,0.76,0.65,1};
	colorRoadsFill[]={1,1,1,1};
	colorMainRoadsFill[]={1,0.6,0.4,1};
	colorGrid[]={0.1,0.1,0.1,0.6};
	colorGridMap[]={0.1,0.1,0.1,0.6};
	colorBackground[]={1.00,1.00,1.00,1.00};
	colorText[]={0.00,0.00,0.00,1.00};
	colorSea[]={0.56,0.80,0.98,0.50};
	colorForest[]={0.60,0.80,0.20,0.50};
	colorRocks[]={0.50,0.50,0.50,0.50};
	colorCountlines[]={0.65,0.45,0.27,0.50};
	colorMainCountlines[]={0.65,0.45,0.27,1.00};
	colorCountlinesWater[]={0.00,0.53,1.00,0.50};
	colorMainCountlinesWater[]={0.00,0.53,1.00,1.00};
	colorForestBorder[]={0.40,0.80,0.00,1.00};
	colorRocksBorder[]={0.50,0.50,0.50,1.00};
	colorPowerLines[]={0.00,0.00,0.00,1.00};
	colorNames[]={0.00,0.00,0.00,1.00};
	colorInactive[]={1.00,1.00,1.00,0.50};
	colorLevels[]={0.00,0.00,0.00,1.00};
	maxSatelliteAlpha=0.85;
	alphaFadeStartScale=0.35;
	alphaFadeEndScale=0.4;
	font="TahomaB";
	sizeEx=0.040000;
	moveOnEdges=0;
	fontLabel="TahomaB";
	sizeExLabel=0.02;
	fontGrid="TahomaB";
	sizeExGrid=0.02;
	fontUnits="TahomaB";
	sizeExUnits=0.02;
	fontNames="TahomaB";
	sizeExNames=0.02;
	fontInfo="TahomaB";
	sizeExInfo=0.02;
	fontLevel="TahomaB";
	sizeExLevel=0.02;
	ptsPerSquareSea=6;
	ptsPerSquareTxt=8;
	ptsPerSquareCLn=8;
	ptsPerSquareExp=8;
	ptsPerSquareCost=8;
	ptsPerSquareFor="4.0f";
	ptsPerSquareForEdge="10.0f";
	ptsPerSquareRoad=2;
	ptsPerSquareObj=10;
	scaleMin=0.001;
	scaleMax=1;
	text="#(argb,8,8,3)color(1,1,1,1)";
	showCountourInterval=2;
	scaleDefault=0.1;
	onMouseButtonClick="";
	onMouseButtonDblClick="";
	class ActiveMarker
	{
		color[]={0.30,0.10,0.90,1.00};
		size=50;
	};
	class Bunker
	{
		icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=14;
		importance="1.5*14*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Bush
	{
		icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[]={0.55,0.64,0.43,1.00};
		size=14;
		importance="0.2*14*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class BusStop
	{
		icon="\A3\ui_f\data\map\mapcontrol\busstop_ca.paa";
		color[]={0.00,0.00,1.00,1.00};
		size=10;
		importance="1*10*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Command
	{
		icon="#(argb,8,8,3)color(1,1,1,1)";
		color[]={0.00,0.00,0.00,1.00};
		size=18;
		importance=1.00;
		coefMin=1.00;
		coefMax=1.00;
	};
	class CustomMark
	{
		color[]={0,0,0,1};
		icon="\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		size=24;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class Cross
	{
		icon="\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="0.7*16*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Fortress
	{
		icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Fuelstation
	{
		icon="\A3\ui_f\data\map\mapcontrol\fuelstation_ca.paa";
		color[]={1.00,0.35,0.35,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.75;
		coefMax=4.00;
	};
	class Fountain
	{
		icon="\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=12;
		importance="1*12*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Hospital
	{
		icon="\A3\ui_f\data\map\mapcontrol\hospital_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.50;
		coefMax=4;
	};
	class Chapel
	{
		icon="\A3\ui_f\data\map\mapcontrol\chapel_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="1*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Church
	{
		icon="\A3\ui_f\data\map\mapcontrol\church_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Lighthouse
	{
		icon="\A3\ui_f\data\map\mapcontrol\lighthouse_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=20;
		importance="3*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Quay
	{
		icon="\A3\ui_f\data\map\mapcontrol\quay_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.50;
		coefMax=4.00;
	};
	class Rock
	{
		icon="\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		color[]={0.35,0.35,0.35,1.00};
		size=12;
		importance="0.5*12*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Ruin
	{
		icon="\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="1.2*16*0.05";
		coefMin=1.00;
		coefMax=4.00;
	};
	class Stack
	{
		icon="\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=20;
		importance="2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Tree
	{
		icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[]={0.55,0.64,0.43,1.00};
		size=12;
		importance="0.9*16*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class SmallTree
	{
		icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[]={0.55,0.64,0.43,1.00};
		size=12;
		importance="0.6*12*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Tourism
	{
		icon="\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="1*16*0.05";
		coefMin=0.70;
		coefMax=4.00;
	};
	class Transmitter
	{
		icon="\A3\ui_f\data\map\mapcontrol\transmitter_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=20;
		importance="2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class ViewTower
	{
		icon="\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2.5*16*0.05";
		coefMin=0.50;
		coefMax=4.00;
	};
	class Watertower
	{
		icon="\A3\ui_f\data\map\mapcontrol\watertower_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=32;
		importance="1.2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Waypoint
	{
		icon="\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		color[]={0.00,0.00,0.00,1.00};
		size=24;
		importance=1.00;
		coefMin=1.00;
		coefMax=1.00;
	};
	class WaypointCompleted
	{
		icon="\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
		color[]={0.00,0.00,0.00,1.00};
		size=24;
		importance=1.00;
		coefMin=1.00;
		coefMax=1.00;
	};
	class Task
	{
		colorCreated[]={1,1,1,1};
		colorCanceled[]={0.7,0.7,0.7,1};
		colorDone[]={0.7,1,0.3,1};
		colorFailed[]={1,0.3,0.2,1};
		color[]={"(profilenamespace getVariable['IGUI_TEXT_RGB_R',0])","(profilenamespace getVariable['IGUI_TEXT_RGB_G',1])","(profilenamespace getVariable['IGUI_TEXT_RGB_B',1])","(profilenamespace getVariable['IGUI_TEXT_RGB_A',0.8])"};
		icon="\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		iconCreated="\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconCanceled="\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconDone="\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed="\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		size=27;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class Power
	{
		icon="\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Powersolar
	{
		icon="\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Powerwave
	{
		icon="\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Powerwind
	{
		icon="\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Shipwreck
	{
		icon="\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
};

class M3ERscEdit {
	access = 0;
	type = 2;
	style = 64;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	colorSelection[] = {1,1,1,0.25};
	colorDisabled[] = {1,1,1,0.5};
	
	font = "PuristaMedium";
	sizeEx = 0.03;
	autocomplete = "";
	text = "";
	size = 0.075;
	shadow = 0;
};

class M3ERscHTML {
	idc = -1;
	type = CT_HTML; // defined constant (9)
	style = ST_LEFT; // defined constant (0)

	x = 0.1;
	y = 0.1;
	w = 0.6;
	h = 0.5;

	filename = "";
	text="";

	colorBackground[] = {1,1,1,0.5};
	colorBold[] = {1, 0, 0, 1};
	colorLink[] = {0, 0, 1, 1};
	colorLinkActive[] = {1, 0, 0, 1};
	colorPicture[] = {1, 1, 1, 1};
	colorPictureBorder[] = {1, 0, 0, 1};
	colorPictureLink[] = {0, 0, 1, 1};
	colorPictureSelected[] = {0, 1, 0, 1};
	colorText[] = {0, 0, 0, 1};

	prevPage = "\ca\ui\data\arrow_left_ca.paa";
	nextPage = "\ca\ui\data\arrow_right_ca.paa";
	font = "PuristaMedium";
	sizeEx = 0;
	
	class H1 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.02474;
	};
	
	class H2 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0286458;
	};
	
	class H3 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0286458;
	};
	
	class H4 {
		font = "PuristaSemiBoldItalic";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
	};
	
	class H5 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
	};
	
	class H6 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
	};
	
	class P {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
	};
};

class RscCheckbox;
class M3ERscCheckbox : RscCheckbox {};