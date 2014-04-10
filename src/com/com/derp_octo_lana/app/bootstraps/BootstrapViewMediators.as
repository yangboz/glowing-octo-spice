
package com.com.derp_octo_lana.app.bootstraps
{
	import com.com.derp_octo_lana.app.views.MainView;
	import com.com.derp_octo_lana.app.views.MainViewMediator;
	import com.com.derp_octo_lana.app.views.screens.GameScreen;
	import com.com.derp_octo_lana.app.views.screens.GameScreenMediator;
	import com.com.derp_octo_lana.app.views.screens.HelpScreen;
	import com.com.derp_octo_lana.app.views.screens.HelpScreenMediator;
	import com.com.derp_octo_lana.app.views.screens.LobbyScreen;
	import com.com.derp_octo_lana.app.views.screens.LobbyScreenMediator;
	import com.com.derp_octo_lana.app.views.screens.SplashScreen;
	import com.com.derp_octo_lana.app.views.screens.SplashScreenMediator;
	
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