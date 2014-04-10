
package com.godpaper.as3.plugins.app42
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.com.derp_octo_lana.app.consts.FlexGlobals;
	import com.godpaper.as3.plugins.IPlug;
	import com.godpaper.as3.plugins.IPlugData;
	import com.shephertz.app42.paas.sdk.as3.App42API;
	import com.shephertz.appwarp.WarpClient;
	import com.shephertz.appwarp.types.ConnectionState;
	
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
		//App42 WrapClient
		private var _app42_wrap_client:WarpClient;
		private var _app42_wrap_client_listener:App42WrapClientListener = new App42WrapClientListener();
		//Reference to keep
		private var roomID:String;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const APP42_API_KEY:String = "a8181333cff6c70e3b3f21976e10911a3bfabc3ac95893d71733179493a57c9f";
		private static const APP42_SECRET_KEY:String = "cff1629d3dbc96ee83eb8a0a3efbbc6004c8034381bdd08afe380ed516280e3e";
		private static const APP42_ROOM_ID:String = "";
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
			return _model;
		}
		/**
		 * App42API initialziation here.
		 * @see http://api.shephertz.com/app42-docs/multivariate-ab-testing/
		 */		
		public function initialization():void
		{
			//User peerID initialization
			var peerID:String = FlexGlobals.userModel.hosterPeerId;//Default get hoster peerID.
			var username:String = FlexGlobals.userModel.hostRoleName;
			//
//			App42API.initialize(APP42_API_KEY,APP42_SECRET_KEY);	
			WarpClient.initialize(APP42_API_KEY,APP42_SECRET_KEY);
			//
			this._app42_wrap_client = WarpClient.getInstance();
			this._app42_wrap_client.setConnectionRequestListener(this._app42_wrap_client_listener);
			this._app42_wrap_client.setRoomRequestListener(this._app42_wrap_client_listener);
			this._app42_wrap_client.setNotificationListener(this._app42_wrap_client_listener);
			this._app42_wrap_client.setZoneRequestListener(this._app42_wrap_client_listener);
			//Try to connect.
			if(this._app42_wrap_client.getConnectionState()==ConnectionState.disconnected)
			{
				this._app42_wrap_client.connect(username);
			}
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
			var roomName:String = args[0];
			var owner:String = args[1];
			var maxusers:int = 10;
			var properties:Object = {};
			this._app42_wrap_client.createRoom(roomName,"DirectX9Ex",maxusers,properties);
		}
		//
		public function refreshRoomList(... args):void
		{
			//TODO: implement function
		}
		//roomID,peerID,roleIndex
		public function joinRoom(... args):void
		{
			var id:String = args[0];
			var peerID:String = args[1];
			var roleIndex:int = args[2];
			//Keep room id reference.
			this.roomID = id;
			//Register role name,//Default as hoster/player1
			FlexGlobals.userModel.hosterPeerId = peerID;//Default role is hoster.
			FlexGlobals.userModel.hosterRoleIndex = roleIndex;
			FlexGlobals.userModel.registerRole(peerID,roleIndex,FlexGlobals.userModel.ROLE_NAME_LIST[roleIndex]);
			//
			this._app42_wrap_client.joinRoom(id);
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
