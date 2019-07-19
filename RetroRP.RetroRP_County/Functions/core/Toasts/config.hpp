#define TOAST_COLOR_RED			[0.780, 0.149, 0.318, 1]
#define TOAST_COLOR_RED_CONFIG		{0.780, 0.149, 0.318, 1}
#define TOAST_COLOR_BLUE		[0.247, 0.831, 0.988, 1]
#define TOAST_COLOR_BLUE_CONFIG		{0.247, 0.831, 0.988, 1}
#define TOAST_COLOR_GREEN		[0.627, 0.874, 0.231, 1]
#define TOAST_COLOR_GREEN_CONFIG	{0.627, 0.874, 0.231, 1}
#define TOAST_COLOR_ORANGE		[0.902,0.494,0.133,1]
#define TOAST_COLOR_ORANGE_CONFIG	{0.902,0.494,0.133,1}


class CfgExileToasts
{
	///////////////////////////////////////////////////////////////////////////
	// INFO
	///////////////////////////////////////////////////////////////////////////
	class InfoEmpty
	{
		template = "%1";
		color[] = TOAST_COLOR_BLUE_CONFIG;
	};

	class InfoTitleOnly
	{
		template = "<t size='22' font='PuristaMedium'>%1</t>";
		color[] = TOAST_COLOR_BLUE_CONFIG;
	};

	class InfoTitleAndText
	{
		template = "<t size='22' font='PuristaMedium'>%1</t><br/><t color='#ff979ba1' size='19' font='PuristaLight'>%2</t>";
		color[] = TOAST_COLOR_BLUE_CONFIG;
	};

	///////////////////////////////////////////////////////////////////////////
	// SUCCESS
	///////////////////////////////////////////////////////////////////////////
	class SuccessEmpty
	{
		template = "%1";
		color[] = TOAST_COLOR_GREEN_CONFIG;
	};

	class SuccessTitleOnly
	{
		template = "<t size='22' font='PuristaMedium'>%1</t>";
		color[] = TOAST_COLOR_GREEN_CONFIG;
	};

	class SuccessTitleAndText
	{
		template = "<t size='22' font='PuristaMedium'>%1</t><br/><t color='#ff979ba1' size='19' font='PuristaLight'>%2</t>";
		color[] = TOAST_COLOR_GREEN_CONFIG;
	};

	///////////////////////////////////////////////////////////////////////////
	// ERROR
	///////////////////////////////////////////////////////////////////////////
	class ErrorEmpty
	{
		template = "%1";
		color[] = TOAST_COLOR_RED_CONFIG;
	};

	class ErrorTitleOnly
	{
		template = "<t size='22' font='PuristaMedium'>%1</t>";
		color[] = TOAST_COLOR_RED_CONFIG;
	};

	class ErrorTitleAndText
	{
		template = "<t size='22' font='PuristaMedium'>%1</t><br/><t color='#ff979ba1' size='19' font='PuristaLight'>%2</t>";
		color[] = TOAST_COLOR_RED_CONFIG;
	};

	///////////////////////////////////////////////////////////////////////////
	// WARNING
	///////////////////////////////////////////////////////////////////////////
	class WarningEmpty
	{
		template = "%1";
		color[] = TOAST_COLOR_ORANGE_CONFIG;
	};

	class WarningTitleOnly
	{
		template = "<t size='22' font='PuristaMedium'>%1</t>";
		color[] = TOAST_COLOR_ORANGE_CONFIG;
	};

	class WarningTitleAndText
	{
		template = "<t size='22' font='PuristaMedium'>%1</t><br/><t color='#ff979ba1' size='19' font='PuristaLight'>%2</t>";
		color[] = TOAST_COLOR_ORANGE_CONFIG;
	};
};