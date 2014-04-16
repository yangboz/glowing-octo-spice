
package com.derp_octo_lana.app.views.screens
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.derp_octo_lana.app.models.SET.SETsModel;
	import com.godpaper.as3.utils.LogUtil;
	
	import mx.logging.ILogger;
	
	import org.robotlegs.mvcs.StarlingMediator;
	
	import starling.events.Event;
	
	
	/**
	 * SettingScreenMediator.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 16, 2014 3:19:07 PM
	 * @history 12/30/13,
	 */ 
	public class SettingScreenMediator extends StarlingMediator
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		//View
		[Inject]
		public var view:SettingScreen;
		//Model
		[Inject]
		public var model:SETsModel;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(SettingScreenMediator);
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
		public function SettingScreenMediator()
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
			//
			this.view._radioGroup.addEventListener(Event.CHANGE, onRadioGroupChange);
		}
		//
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
		//
		private function onRadioGroupChange(event:Event):void
		{
			this.model.numOfPicker = this.view._radioGroup.selectedIndex? SETsModel.SET_LEVEL_02: SETsModel.SET_LEVEL_01;
			LOG.info("SETs radio group changed:{0},number of picker:{1}", this.view._radioGroup.selectedIndex.toString(),this.model.numOfPicker);
		}
	}
	
}