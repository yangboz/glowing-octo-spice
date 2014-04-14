
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
	
	import org.robotlegs.mvcs.StarlingMediator;
	
	import starling.display.DisplayObject;
	import starling.display.Image;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	/**
	 * HelpScreenMediator.as class. 
	 * @author Administrator
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created 2013-3-12 下午2:45:05
	 * @history 05/00/12,
	 */ 
	public class HelpScreenMediator extends StarlingMediator
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _splash:MovieClip;
		//
		[Inject]
		public var view:HelpScreen;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(GameScreenMediator);
		
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
		public function HelpScreenMediator()
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
			this._splash = new EmbedAssets.SET_TUTORIAL();
			//
			var textuerAltas:TextureAtlas =  DynamicAtlas.fromMovieClipContainer(this._splash);
			var image:Image = new Image(textuerAltas.texture);
			image.width = image.height = 100;
			//
			this.view.addChild(image);
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