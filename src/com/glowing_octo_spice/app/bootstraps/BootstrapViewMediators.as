
package com.glowing_octo_spice.app.bootstraps
{
	import com.glowing_octo_spice.app.views.MainView;
	import com.glowing_octo_spice.app.views.MainViewMediator;
	import com.glowing_octo_spice.app.views.screens.GameScreen;
	import com.glowing_octo_spice.app.views.screens.GameScreenMediator;
	import com.glowing_octo_spice.app.views.screens.HelpScreen;
	import com.glowing_octo_spice.app.views.screens.HelpScreenMediator;
	import com.glowing_octo_spice.app.views.screens.LobbyScreen;
	import com.glowing_octo_spice.app.views.screens.LobbyScreenMediator;
	import com.glowing_octo_spice.app.views.screens.SplashScreen;
	import com.glowing_octo_spice.app.views.screens.SplashScreenMediator;
	
	import org.robotlegs.core.IStarlingMediatorMap;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * BootstrapViewMediators.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 8, 2013 11:17:48 PM
	 * @history 05/00/12,
	 */ 
	public class BootstrapViewMediators
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Protected properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Constructor
		//
		//--------------------------------------------------------------------------
		public function BootstrapViewMediators(mediatorMap:IStarlingMediatorMap)
		{
			mediatorMap.mapView(MainView,MainViewMediator);
			mediatorMap.mapView(SplashScreen,SplashScreenMediator);
			mediatorMap.mapView(GameScreen,GameScreenMediator);
			mediatorMap.mapView(LobbyScreen,LobbyScreenMediator);
			mediatorMap.mapView(HelpScreen,HelpScreenMediator);
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Protected methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}