class DeathScreen
{
	idd = 7300;
	name = "client_Death_Screen";
	movingEnabled = 0;
	//onload = "_MedicBtn = ((findDisplay 7300) displayCtrl 7303);_MedicBtn ctrlEnable true;";
	enableSimulation = 1;
	
	class controlsBackground
	{
	};
	
	class Controls
	{
		class MedicsOnline : client_RscButtonMenu
		{
			idc = 7304;
			text = "Medics: 1";
			x = 0.000874975 * safezoneW + safezoneX;
			y = 0.0556 * safezoneH + safezoneY;
			w = (20 / 40);
			h = (1 / 25);
			onButtonClick = "";
			colorBackground[] = {0, 0, 0, 0.7};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class MedicsNearby : client_RscButtonMenu
		{
			idc = 7305;
			text = "Nearby: No";
			x = 0.000874975 * safezoneW + safezoneX;
			y = 0.0776 * safezoneH + safezoneY;
			w = (20 / 40);
			h = (1 / 25);
			onButtonClick = "";
			colorBackground[] = {0, 0, 0, 0.7};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class RespawnBtn : client_RscButtonMenu
		{
			idc = 7302;
			x = 0.000874975 * safezoneW + safezoneX;
			y = 0.0996 * safezoneH + safezoneY;
			w = (20 / 40);
			h = (1 / 25);
			text = "Respawn";
			onButtonClick = "closeDialog 0; [] call client_fnc_startFresh; ";
			colorBackground[] = {0, 0, 0, 1};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class MedicBtn : client_RscButtonMenu
		{
			idc = 7303;
			x = 0.000874975 * safezoneW + safezoneX;
			y = 0.1216 * safezoneH + safezoneY;
			w = (20 / 40);
			h = (1 / 25);
			onButtonClick = "[] spawn client_fnc_requestMedicAction;";
			text = "Request Medic";
			colorBackground[] = {0, 0, 0, 1};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class respawnTime : client_RscButtonMenu
		{
			idc = 7301;
			text = "";
			x = 0.000874975 * safezoneW + safezoneX;
			y = 0.0226 * safezoneH + safezoneY;
			w = (20 / 40);
			h = (1 / 25);
			onButtonClick = "";
			colorBackground[] = {0, 0, 0, 1};
		};
	};
};