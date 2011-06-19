package
{
	import flash.system.Capabilities;
	
	import mx.core.RuntimeDPIProvider;
	
	public class CustomRuntimeDPIProvider extends RuntimeDPIProvider
	{
		public function CustomRuntimeDPIProvider()
		{
			super();
		}
		
		override public function get runtimeDPI():Number
		{
			if (Capabilities.screenResolutionX == 540 && Capabilities.screenResolutionY == 960 || 
				Capabilities.screenResolutionX == 960 && Capabilities.screenResolutionY == 540 ||
				Capabilities.screenResolutionX == 480 && Capabilities.screenResolutionY == 800
			)
				return 240;
			
			return super.runtimeDPI;
		}
	}
}