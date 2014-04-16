
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
	
	import feathers.data.ListCollection;
	
	import org.robotlegs.mvcs.StarlingMediator;
	
	import starling.events.Event;
	
	
	/**
	 * GameScreenMediator.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 12, 2013 12:28:13 PM
	 * @history 05/00/12,
	 */ 
	public class GameScreenMediator extends StarlingMediator
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		//Model
		[Inject]
		public var sets_model:SETsModel;
		//
		[Inject]
		public var view:GameScreen;
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
		public function GameScreenMediator()
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
//			LOG.info("onRegister");
			this.viewComponent.updateTileList( sets_model.getAssembledSets(0) );
			//ViewEventListener
			this.view._shuffleButton.addEventListener(Event.TRIGGERED, onShuffleButtonTriggered);
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
		private function onShuffleButtonTriggered(event:Event):void
		{
			var shuffled:ListCollection = sets_model.getShuffledCurrentSetCards();
			LOG.info("shuffled set cards:{0}",shuffled);
			this.view.updateTileList(shuffled);
		}
	}
	
}