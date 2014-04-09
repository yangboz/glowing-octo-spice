
package com.glowing_octo_spice.app.context
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.glowing_octo_spice.app.bootstraps.BootstrapCommands;
	import com.glowing_octo_spice.app.bootstraps.BootstrapModels;
	import com.glowing_octo_spice.app.bootstraps.BootstrapViewMediators;
	
	import org.robotlegs.mvcs.StarlingContext;
	
	import starling.display.DisplayObjectContainer;
	
	
	/**
	 * MainStarlingViewContext.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 8, 2013 10:48:43 PM
	 * @history 05/00/12,
	 */ 
	public class MainStarlingViewContext extends StarlingContext
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
		public function MainStarlingViewContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		override public function startup():void
		{
			//Bootstrap now.
			new BootstrapModels(this.injector);
			new BootstrapCommands(this.commandMap);
			new BootstrapViewMediators(this.mediatorMap);
			//
			super.startup();
		}
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