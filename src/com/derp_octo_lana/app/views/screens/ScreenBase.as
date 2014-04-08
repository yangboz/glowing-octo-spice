
package com.derp_octo_lana.app.views.screens {
	import com.derp_octo_lana.app.consts.FlexGlobals;
	
	import feathers.controls.Button;
	import feathers.controls.Header;
	import feathers.controls.Screen;
	import feathers.system.DeviceCapabilities;
	
	import starling.core.Starling;
	import starling.display.DisplayObject;
	import starling.display.Image;
	import starling.events.Event;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	// --------------------------------------------------------------------------

	/**
	 * ScreenBase.as class. 
	 * @author Administrator
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created 2013-3-12 下午3:22:00
	 * @history 05/00/12,
	 */ 
	public class ScreenBase extends Screen
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _backButton:Button;
		//
		protected var headerTitle:String = "Screen Title";
		//----------------------------------
		// CONSTANTS
		//----------------------------------
//		private static const LOG:ILogger = LogUtil.getLogger(ScreenBase);
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
		protected var _header:Header;
		//--------------------------------------------------------------------------
		//
		// Constructor
		//
		//--------------------------------------------------------------------------
		public function ScreenBase()
		{
			super();
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
		override protected function initialize():void
		{
			this._header = new Header();
			this._header.title = this.headerTitle;
			this.addChild(this._header);
			//left items
			this._header.leftItems = this.getHeaderLeftItems();
			//right items
			this._header.rightItems = this.getHeaderRightItems();
		}
		//
		override protected function draw():void
		{
			this._header.width = this.actualWidth;
			this._header.validate();
		}
		//For override
		//
		protected function getHeaderLeftItems():Vector.<DisplayObject>
		{
			//
			this._backButton = new Button();
//			this._backButton.label = "BACK";
			this._backButton.defaultIcon = new Image(FlexGlobals.iconAtlas.getTexture("BACK"));
			//TODO:tablet handler
			//
			this._backButton.addEventListener(Event.TRIGGERED, back_button_triggeredHandler);
			var items:Vector.<DisplayObject>  = new Vector.<DisplayObject>();
			items.push(_backButton);
			return items;
		}
		//
		protected function getHeaderRightItems():Vector.<DisplayObject>
		{
			var items:Vector.<DisplayObject>  = new Vector.<DisplayObject>();
//			items.push(_backButton);
			return items;
		}
		//
		protected function back_button_triggeredHandler(event:Event):void
		{
			FlexGlobals.screenNavigator.showScreen(FlexGlobals.SCREEN_MAIN_MENU);
		}
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}