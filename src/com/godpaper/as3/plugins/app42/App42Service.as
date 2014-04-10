
package com.godpaper.as3.plugins.app42
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.services.IConductService;
	import com.shephertz.app42.paas.sdk.as3.App42API;
	import com.shephertz.app42.paas.sdk.as3.abtest.ABTestService;
	import com.shephertz.app42.paas.sdk.as3.game.GameService;
	import com.shephertz.appwarp.WarpClient;
	import com.shephertz.appwarp.types.ConnectionState;
	
	
	/**
	 * App42Service.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 9, 2014 2:36:43 PM
	 * @history 12/30/13,
	 */ 
	public class App42Service implements IConductService
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		public var abTestService:ABTestService;
		public var gameService:GameService;
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
		public function App42Service()
		{
			//TODO: implement function
		}
		
		public function get connected():Boolean
		{
//			return App42API.loggedInUser!="";
//			return false;
			return (WarpClient.getInstance().getConnectionState()==ConnectionState.connected);
		}
		/**
		 * After initialziation,developer needs to call the buildXXXService method on ServiceAPI instance to get the instance of the particular API that you wish to build. 
		 * @param arg
		 */		
		public function initialization(...arg):void
		{
			this.abTestService = App42API.buildABTestService();
			this.gameService = App42API.buildGameService();
		}
		
		public function transforBrevity(type:String, value:String):String
		{
			//TODO: implement function
			return null;
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
		
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}