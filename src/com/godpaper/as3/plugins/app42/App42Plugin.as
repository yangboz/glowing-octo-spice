
package com.godpaper.as3.plugins.app42
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.derp_octo_lana.app.consts.FlexGlobals;
	import com.godpaper.as3.plugins.IPlug;
	import com.godpaper.as3.plugins.IPlugData;
	import com.godpaper.as3.plugins.playerIO.PlayerIoPlugin;
	import com.godpaper.as3.services.IConductService;
	import com.godpaper.as3.utils.LogUtil;
	import com.shephertz.app42.paas.sdk.as3.App42CallBack;
	import com.shephertz.app42.paas.sdk.as3.App42Exception;
	import com.shephertz.app42.paas.sdk.as3.ServiceAPI;
	import com.shephertz.app42.paas.sdk.as3.util.Util;
	import com.shephertz.appwarp.WarpClient;
	import com.shephertz.appwarp.types.ConnectionState;
	
	import mx.logging.ILogger;
	
	import feathers.controls.Alert;
	import feathers.data.ListCollection;
	
	import org.osflash.signals.Signal;
	
	import playerio.Message;
	
	import starling.events.Event;
	
	
	/**
	 * App42Plugin.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 9, 2014 2:35:55 PM
	 * @history 12/30/13,
	 */ 
	public class App42Plugin implements IPlug,App42CallBack
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
		//
		private var _service:App42PluginService = new App42PluginService();
		private var _userName:String;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const APP42_API_KEY:String = "bed6761e541cd0a135104c31b2f736a02b7294eef20daee891c1a5b864fb93fd";
		private static const APP42_SECRET_KEY:String = "b3d47468ec8dd5a232c5b6dbd4efd5c2f4fc954575c809fc16f4e6252dd1cdd6";
		private static const APP42_ROOM_ID:String = "";
		//
		private static const LOG:ILogger = LogUtil.getLogger(App42Plugin);
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
		//
		public function get data():IPlugData
		{
			return _model;
		}
		//
		public function get service():IConductService
		{
			return _service;
		}
		//
		public function get app42Service():App42PluginService
		{
			return this.service as App42PluginService;
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
		/**
		 * App42Plugin constructor with default gameID and variable boardID. 
		 * @param gameID the ID of game.
		 * @param boardID the ID of game board.
		 */		
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
		
		/**
		 * App42API initialziation here.
		 * @see http://api.shephertz.com/app42-docs/multivariate-ab-testing/
		 */		
		public function initialization():void
		{
			//User peerID initialization
			var peerID:String = FlexGlobals.userModel.hosterPeerId;//Default get hoster peerID.
			this._userName = FlexGlobals.userModel.hostRoleName;
			//
//			App42API.initialize(APP42_API_KEY,APP42_SECRET_KEY);	
			WarpClient.initialize(APP42_API_KEY,APP42_SECRET_KEY);
			ServiceAPI
			//
			this._app42_wrap_client = WarpClient.getInstance();
			this._app42_wrap_client.setConnectionRequestListener(this._app42_wrap_client_listener);
			this._app42_wrap_client.setRoomRequestListener(this._app42_wrap_client_listener);
			this._app42_wrap_client.setNotificationListener(this._app42_wrap_client_listener);
			this._app42_wrap_client.setZoneRequestListener(this._app42_wrap_client_listener);
			//Try to connect.
			if(this._app42_wrap_client.getConnectionState()==ConnectionState.disconnected)
			{
				this._app42_wrap_client.connect(_userName);
			}
			//Service initialization
			this.service.initialization();
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
			//Save to score data
//			this.app42Service.scoreService.	
			return false;
		}
		
		public function submitData(value:Object):Boolean
		{
			//Submit data by App42 SDK
			this.app42Service.scoreBoardService.saveUserScore(this._model.gameID,this._userName,10,this);
			return true;
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
			this._app42_wrap_client.createRoom(roomName,_userName,maxusers,properties);
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
		//App42CallBack
		public function onSuccess(obj:Object):void
		{
			LOG.info("App42CallBack onSuccess:{0}",Util.toString(obj));
			var alert:Alert = Alert.show( "Save to ScoreBoard Success!", "Info", new ListCollection(
				[
					{ label: "OK", triggered: okButton_triggeredHandler }
				]) );
			//Signal_dispatch
			FlexGlobals.userModel.signal_score_sumbited.dispatch(true);
		}
		public function onException(exception:App42Exception):void
		{
			LOG.info("App42CallBack exception:{0}",Util.toString(exception));
			var alert:Alert = Alert.show( "Save to ScoreBoard Failure!", "Error", new ListCollection(
				[
					{ label: "OK", triggered: okButton_triggeredHandler }
				]) );
			//Signal_dispatch
			FlexGlobals.userModel.signal_score_sumbited.dispatch(false);
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
		private function okButton_triggeredHandler( event:Event, data:Object ):void
		{
			//Nothing
		}
	}

}
