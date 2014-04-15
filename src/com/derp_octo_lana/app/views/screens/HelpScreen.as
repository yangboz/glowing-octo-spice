
package com.derp_octo_lana.app.views.screens
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.derp_octo_lana.app.consts.FlexGlobals;
	import com.emibap.textureAtlas.DynamicAtlas;
	import com.godpaper.as3.utils.LogUtil;
	
	import flash.display.MovieClip;
	
	import mx.logging.ILogger;
	
	import assets.EmbedAssets;
	
	import starling.display.Image;
	import starling.events.Event;
	import starling.textures.TextureAtlas;

	/**
	 * HelpScreen.as class. 
	 * @author Administrator
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created 2013-3-12 下午2:34:47
	 * @history 05/00/12,
	 */ 
	public class HelpScreen extends ScreenBase
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _splash:MovieClip;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(HelpScreen);
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
		public function HelpScreen()
		{
			super();
			//
			this.headerTitle = 'Help?';
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
			 super.initialize();
			 //
			 this._splash = new EmbedAssets.SET_TUTORIAL();
			 //Does't work here.
//			 var textuerAltas:TextureAtlas =  DynamicAtlas.fromMovieClipContainer(this._splash);
//			 var image:Image = new Image(textuerAltas.texture);
//			 image.width = image.height = 100;
//			 //
//			 this.addChild(image);
			 //
			 FlexGlobals.flashStage.addChild(this._splash);
			 this._splash.y = 95;//A litter offset.
		 }
		 override protected function back_button_triggeredHandler(event:Event):void
		 {
			 super.back_button_triggeredHandler(event);
			 //
			 FlexGlobals.flashStage.removeChild(this._splash);
		 }
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}