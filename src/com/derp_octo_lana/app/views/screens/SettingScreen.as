package com.derp_octo_lana.app.views.screens 
{
	import com.derp_octo_lana.app.consts.FlexGlobals;
	import com.derp_octo_lana.app.models.SET.SETsModel;
	import com.godpaper.as3.utils.LogUtil;
	
	import flash.display.StageDisplayState;
	
	import mx.logging.ILogger;
	
	import feathers.controls.Check;
	import feathers.controls.Radio;
	import feathers.controls.ScrollContainer;
	import feathers.core.ToggleGroup;
	import feathers.layout.HorizontalLayout;
	
	import starling.events.Event;

	/**
	* SettingScreen.as
	* Created 2013-3-12 下午12:22:59
	* @author lee
	* @langVersion 3.0
	* @playerVersion 11.2+
	* @airVersion 3.2+
	* @history 05/00/12
	*/
	public class SettingScreen extends ScreenBase
	{
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _fullBtn:Check;
		//
		private var _radio1:Radio;
		private var _radio2:Radio;
		public var _radioGroup:ToggleGroup;
		private var _radioContainer:ScrollContainer;
		//--------------------------------------------------------------------------
		//
		// CONSTANTS
		//
		//--------------------------------------------------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(SettingScreen);
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Protected properties
		//
		// --------------------------------------------------------------------------
		//--------------------------------------------------------------------------
		//
		// Constructor
		//
		//--------------------------------------------------------------------------
		public function SettingScreen() 
		{
			super();
			//
			this.headerTitle = "Settings";
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
		// --------------------------------------------------------------------------
		override protected function initialize() : void 
		{
			super.initialize();
			//
			_fullBtn=new Check();
			_fullBtn.label="Full Screen Mode";
			this._fullBtn.x=50;
			this._fullBtn.y=120;
			this.addChild(_fullBtn);
			_fullBtn.addEventListener(Event.TRIGGERED, fullHandler);
			//
			const containerLayout:HorizontalLayout = new HorizontalLayout();
			containerLayout.horizontalAlign = HorizontalLayout.HORIZONTAL_ALIGN_CENTER;
			containerLayout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_MIDDLE;
			containerLayout.gap = 20 * this.dpiScale;
			//
			this._radioGroup = new ToggleGroup();
//			this._radioGroup.addEventListener(Event.CHANGE, radioGroup_changeHandler);
			
			this._radioContainer = new ScrollContainer();
			this._radioContainer.layout = containerLayout;
			this._radioContainer.horizontalScrollPolicy = ScrollContainer.SCROLL_POLICY_OFF;
			this._radioContainer.verticalScrollPolicy = ScrollContainer.SCROLL_POLICY_OFF;
			this.addChild(this._radioContainer);
			
			this._radio1 = new Radio();
			this._radio1.label = "SET-12";
			this._radioGroup.addItem(this._radio1);
			this._radioContainer.addChild(this._radio1);
			this._radioContainer.y = 200;
			this._radioContainer.x = 50;
			
			this._radio2 = new Radio();
			this._radio2.label = "SET-9";
			this._radioGroup.addItem(this._radio2);
			this._radioContainer.addChild(this._radio2);
		}
		//
		override protected function draw() : void {
			super.draw();
//			_fullBtn.y=_header.height+50;
		}
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
		private function fullHandler(event : Event) : void 
		{
			//
			var nowstate:String=FlexGlobals.flashStage.displayState;
			if(nowstate==StageDisplayState.NORMAL){
				FlexGlobals.flashStage.displayState=StageDisplayState.FULL_SCREEN;
			}else{
				FlexGlobals.flashStage.displayState=StageDisplayState.NORMAL;
			}
		}
	}
}
