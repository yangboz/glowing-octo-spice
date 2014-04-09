
package com.glowing_octo_spice.app.views
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.glowing_octo_spice.app.models.SET.SETsModel;
	import com.godpaper.as3.utils.LogUtil;
	
	import mx.logging.ILogger;
	
	import org.robotlegs.mvcs.StarlingMediator;
	
	
	/**
	 * MainViewMediator.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 8, 2013 10:53:27 PM
	 * @history 05/00/12,
	 */ 
	public class MainViewMediator extends StarlingMediator
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[Inject]public var setsModel:SETsModel;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(MainViewMediator);
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
		public function MainViewMediator()
		{
			super();
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		override public function onRegister():void
		{
			LOG.info("onRegister");
		}
		
		override public function onRemove():void
		{
			LOG.info("onRemove");
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