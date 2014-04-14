
package com.derp_octo_lana.app.views.screens
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.emibap.textureAtlas.DynamicAtlas;
	import com.godpaper.as3.utils.LogUtil;
	
	import flash.display.MovieClip;
	
	import mx.logging.ILogger;
	
	import assets.EmbedAssets;
	
	import starling.display.Image;
	import starling.textures.TextureAtlas;
	
	import starling.display.Image;
	import starling.textures.TextureAtlas;
	
	import com.emibap.textureAtlas.DynamicAtlas;
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
			 //
			 var textuerAltas:TextureAtlas =  DynamicAtlas.fromMovieClipContainer(this._splash);
			 var image:Image = new Image(textuerAltas.texture);
			 image.width = image.height = 100;
			 //
			 this.addChild(image);
		 }
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}