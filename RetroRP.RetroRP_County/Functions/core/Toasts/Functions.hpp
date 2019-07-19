class Toasts_Module {
	tag = "client_Toasts";

	class ToastsInit
	{
		file = "Functions\core\Toasts";
		class initToasts {};
	};
	class Toasts
	{
		file = "Functions\core\Toasts";
		class addTemplateToast {};
		class addToast {};
        class onDraw3d {};
		class pushToBottom {};
		class removeAllToasts {};
        class thread {};
	};
};