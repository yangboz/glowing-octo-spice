
package com.godpaper.as3.plugins.app42
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.glowing_octo_spice.app.consts.FlexGlobals;
	import com.godpaper.as3.plugins.IPlug;
	import com.godpaper.as3.plugins.IPlugData;
	import com.shephertz.app42.paas.sdk.as3.App42API;
	
	import org.osflash.signals.Signal;
	
	import playerio.Message;
	import playerio.PlayerIOError;
	
	
	/**
	 * App42Plugin.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 9, 2014 2:35:55 PM
	 * @history 12/30/13,
	 */ 
	public class App42Plugin implements IPlug
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _model:App42Model;
		//Singals for external handlers.
		private var _signal_room_refreshed:Signal;
		private var _signal_hoster_joined:Signal;
		private var _signal_user_joined:Signal;
		private var _signal_piece_placed:Signal;
		private var _signal_game_tie:Signal;
		private var _signal_game_reset:Signal;
		private var _signal_player_win:Signal;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		
		//IPluginSignal impl
		public function get signal_player_win():Signal
		{
			return _signal_player_win;
		}
		
		public function get signal_game_reset():Signal
		{
			return _signal_game_reset;
		}
		
		public function get signal_game_tie():Signal
		{
			return _signal_game_tie;
		}
		
		public function get signal_piece_placed():Signal
		{
			return _signal_piece_placed;
		}
		
		public function get signal_user_joined():Signal
		{
			return _signal_user_joined;
		}
		
		public function get signal_hoster_joined():Signal
		{
			return _signal_hoster_joined;
		}
		
		public function get signal_room_refreshed():Signal
		{
			return _signal_room_refreshed;
		}
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
		public function App42Plugin(gameID:String="SET", boardID:String="")
		{
			_model = new App42Model();
			_model.gameID = gameID;
			_model.boardID = boardID;
			//IPluginSignal implementation
			this._signal_room_refreshed = new Signal(Array);
			this._signal_hoster_joined = new Signal(String);
			this._signal_user_joined = new Signal();
			this._signal_piece_placed = new Signal(Message,int,int,String,int);
			this._signal_game_tie = new Signal();
			this._signal_game_reset = new Signal();
			this._signal_player_win = new Signal(int,String);//winner index,winner name.
		}
		
		public function get data():IPlugData
		{
			//TODO: implement function
			return null;
		}
		/**
		 * App42API initialziation here.
		 * @see http://api.shephertz.com/app42-docs/multivariate-ab-testing/
		 */		
		public function initialization():void
		{
			App42API.initialize("a8181333cff6c70e3b3f21976e10911a3bfabc3ac95893d71733179493a57c9f","cff1629d3dbc96ee83eb8a0a3efbbc6004c8034381bdd08afe380ed516280e3e");	
		}
		
		public function showData():Boolean
		{
			//TODO: implement function
			return false;
		}
		
		public function showStore():Boolean
		{
			//TODO: implement function
			return false;
		}
		
		public function showLeaderboard(value:Object):Boolean
		{
			//TODO: implement function
			return false;
		}
		
		public function showLoginWidget():Boolean
		{
			return true;
		}
		
		public function saveData(value:Object):Boolean
		{
			//TODO: implement function
			return false;
		}
		
		public function submitData(value:Object):Boolean
		{
			//TODO: implement function
			return false;
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		//Default as hoster/player1,roleIndx=0,
		public function createRoom(... args):void
		{
			//TODO: implement function
		}
		//
		public function refreshRoomList(... args):void
		{
			//TODO: implement function
		}
		//roomID,peerID,roleIndex
		public function joinRoom(... args):void
		{
			//TODO: implement function
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