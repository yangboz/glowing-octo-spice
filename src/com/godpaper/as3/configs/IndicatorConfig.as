package com.godpaper.as3.configs
{
	import com.com.derp_octo_lana.app.views.popups.ThinkIndicatory;
	
	import feathers.controls.popups.CalloutPopUpContentManager;
	import feathers.core.PopUpManager;
	
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	/**
	 * IndicatorConfig.as class.All kinds of indicators configurations here.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 9.0
	 * Created Jan 27, 2011 2:07:57 PM
	 */   	 
	public class IndicatorConfig
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		//default 
		private static var _readOut:Boolean=false;
		//about chess check(chinese chess jam..)
		public static var check:Boolean=false;
		//about plugins(mochi..)
		private static var _submitScore:Boolean=false;
		//about airport(utility,extreme,etc..)
		public static var airportUtility:Boolean=false;
		//about popup the computer win title window
		private static var _outcome:Boolean=false;
		//about popup the waiting apponent title window
		private static var _waiting:Boolean=false;
		//call out(popup manager).
		private static var _callout:CalloutPopUpContentManager = new CalloutPopUpContentManager();
		//----------------------------------
		//  CONSTANTS
		//----------------------------------

		//--------------------------------------------------------------------------
		//
		//  Public properties
		//
		//-------------------------------------------------------------------------- 
		//
		private static var waitingIndicatory:ThinkIndicatory;
		public static function get waiting():Boolean
		{
			return _waiting;
		}

		public static function set waiting(value:Boolean):void
		{
			_waiting = value;
			//Call out view(progress bar).
			if(value)
			{
				if(waitingIndicatory == null) waitingIndicatory = new ThinkIndicatory("Waiting...");
				//				Callout.show(computerWinIndicatory, getChessBoard(), Callout.DIRECTION_ANY);
				//				_callout.open(computerWinIndicatory,FlexGlobals.gameScene);
				if(!PopUpManager.isPopUp(waitingIndicatory))//Avoid duplication.
				{
					PopUpManager.addPopUp(waitingIndicatory);
				}
			}else
			{
				//				_callout.close();
				if(waitingIndicatory)
				{
					PopUpManager.removePopUp(waitingIndicatory);
					waitingIndicatory = null;
				}
			}
		}
		//
		public static function get readOut():Boolean
		{
			return _readOut;
		}
		//
		private static var thinkIndicatory:ThinkIndicatory;
		public static function set readOut(value:Boolean):void
		{
			_readOut = value;
			//Call out view(progress bar).
			if(value)
			{
				if(thinkIndicatory == null) thinkIndicatory = new ThinkIndicatory();
//				Callout.show(thinkIndicatory, getChessBoard(), Callout.DIRECTION_DOWN);
//				_callout.open(thinkIndicatory,FlexGlobals.gameScene);
				if(!PopUpManager.isPopUp(thinkIndicatory))//Avoid duplication.
				{
					PopUpManager.addPopUp(thinkIndicatory);
				}
			}else
			{
//				_callout.close();
				if(thinkIndicatory)
				{
					PopUpManager.removePopUp(thinkIndicatory);
					thinkIndicatory = null;
				}
			}
		}
		//--------------------------------------------------------------------------
		//
		//  Protected properties
		//
		//-------------------------------------------------------------------------- 

		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Protected methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Private methods
		//
		//--------------------------------------------------------------------------

	}

}

