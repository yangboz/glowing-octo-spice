
package com.godpaper.as3.plugins.app42
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.derp_octo_lana.app.consts.FlexGlobals;
	import com.godpaper.as3.utils.LogUtil;
	import com.shephertz.appwarp.listener.ConnectionRequestListener;
	import com.shephertz.appwarp.listener.NotificationListener;
	import com.shephertz.appwarp.listener.RoomRequestListener;
	import com.shephertz.appwarp.listener.ZoneRequestListener;
	import com.shephertz.appwarp.messages.Chat;
	import com.shephertz.appwarp.messages.LiveResult;
	import com.shephertz.appwarp.messages.LiveRoom;
	import com.shephertz.appwarp.messages.LiveUser;
	import com.shephertz.appwarp.messages.Lobby;
	import com.shephertz.appwarp.messages.MatchedRooms;
	import com.shephertz.appwarp.messages.Move;
	import com.shephertz.appwarp.messages.Room;
	import com.shephertz.appwarp.types.ResultCode;
	
	import flash.utils.ByteArray;
	
	import mx.logging.ILogger;
	
	import feathers.controls.Alert;
	import feathers.data.ListCollection;
	
	import starling.events.Event;
	
	
	/**
	 * App42WrapClientListener.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 10, 2014 11:13:13 AM
	 * @history 12/30/13,
	 */ 
	public class App42WrapClientListener implements ConnectionRequestListener, RoomRequestListener, NotificationListener, ZoneRequestListener
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _app42Plugin:App42Plugin;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(App42WrapClientListener);
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
		public function App42WrapClientListener()
		{
			//
		}
		
		public function onConnectDone(res:int):void
		{
			this._app42Plugin = FlexGlobals.pluginProvider as App42Plugin;
			//
			if(res == ResultCode.success){
//				WarpClient.getInstance().joinRoom(_owner.roomID);
//				WarpClient.getInstance().subscribeRoom(_owner.roomID);
				LOG.info("onConnectDone!");
				//Broad cast signal
				this._app42Plugin.signal_hoster_joined.dispatch(FlexGlobals.userModel.hosterPeerId);
			}
			else if(res == ResultCode.api_not_found || res == ResultCode.auth_error){
				LOG.error("Verify your api key and secret key!");
				this.alertError("Verify your api key and secret key!");
			}
			else if(res == ResultCode.connection_error){
				LOG.error("Network Error. Check your internet connectivity and retry!");
				this.alertError("Network Error. Check your internet connectivity and retry!");
			}
			else{
				LOG.error("Unknown App42 Error!");
				this.alertError("Unknown App42 Error!");
			}
		}
		
		public function onDisConnectDone(res:int):void
		{
			//TODO: implement function
		}
		
		public function onInitUDPDone(res:int):void
		{
			//TODO: implement function
		}
		
		public function onSubscribeRoomDone(event:Room):void
		{
			//TODO: implement function
		}
		
		public function onUnsubscribeRoomDone(event:Room):void
		{
			//TODO: implement function
		}
		
		public function onJoinRoomDone(event:Room):void
		{
			if(event.result == ResultCode.success){
				LOG.info("onJoinRoomDone!");
				//Broad cast signal
				this._app42Plugin.signal_user_joined.dispatch();
			}
			else{
				LOG.info("Room join failed. Verify your room id.");
			}
			//
		}
		
		public function onLeaveRoomDone(event:Room):void
		{
			//TODO: implement function
		}
		
		public function onGetLiveRoomInfoDone(event:LiveRoom):void
		{
			//TODO: implement function
		}
		
		public function onSetCustomRoomDataDone(event:LiveRoom):void
		{
			//TODO: implement function
		}
		
		public function onUpdatePropertiesDone(event:LiveRoom):void
		{
			//TODO: implement function
		}
		
		public function onLockPropertiesDone(result:int):void
		{
			//TODO: implement function
		}
		
		public function onUnlockPropertiesDone(result:int):void
		{
			//TODO: implement function
		}
		
		public function onRoomCreated(event:Room):void
		{
			LOG.info("Room created successful. Verify your room id:{0}",event.roomId);
		}
		
		public function onRoomDestroyed(event:Room):void
		{
			//TODO: implement function
		}
		
		public function onUserLeftRoom(event:Room, user:String):void
		{
			//TODO: implement function
		}
		
		public function onUserJoinedRoom(event:Room, user:String):void
		{
			//TODO: implement function
		}
		
		public function onUserLeftLobby(event:Lobby, user:String):void
		{
			//TODO: implement function
		}
		
		public function onUserJoinedLobby(event:Lobby, user:String):void
		{
			//TODO: implement function
		}
		
		public function onChatReceived(event:Chat):void
		{
//			if(event.sender != _owner.localUsername){
//				var xyArray:Array = event.chat.split(",");
//				var x:int = parseInt( xyArray[1]);
//				var y:int = parseInt( xyArray[2]);
//				if(xyArray[0] == "player"){
//					_owner.moveRemotePlayer(x, y);
//				}
//				else if(xyArray[0] == "projectile"){
//					_owner.moveRemoteProjectile(x, y);
//				}
//			}
		}
		
		public function onPrivateChatReceived(sender:String, chat:String):void
		{
			//TODO: implement function
		}
		
		public function onUpdatePeersReceived(update:ByteArray, isUDP:Boolean):void
		{
			//TODO: implement function
		}
		
		public function onUserChangeRoomProperties(room:Room, user:String, properties:Object, lockTable:Object):void
		{
			//TODO: implement function
		}
		
		public function onMoveCompleted(move:Move):void
		{
			//TODO: implement function
		}
		
		public function onUserPaused(locid:String, isLobby:Boolean, username:String):void
		{
			//TODO: implement function
		}
		
		public function onUserResumed(locid:String, isLobby:Boolean, username:String):void
		{
			//TODO: implement function
		}
		
		public function onGameStarted(sender:String, roomid:String, nextTurn:String):void
		{
			//TODO: implement function
		}
		
		public function onGameStopped(sender:String, roomid:String):void
		{
			//TODO: implement function
		} 
		//ZoneRequestListener
		/** 
		 * Invoked in response to a deleteRoom request. 
		 * @param event 
		 */  
		public function onDeleteRoomDone(event:Room):void
		{
			trace(event);
		}  
		/** 
		 * Invoked in response to a getAllRooms request. 
		 * @param event 
		 */  
		public function onGetAllRoomsDone(event:LiveResult):void
		{
			trace(event);
		}  
		/** 
		 * Invoked in response to a createRoom request. 
		 * @param event 
		 */  
		public function onCreateRoomDone(event:Room):void
		{
			LOG.info("Room created successful. Verify your room id:{0}",event.roomId);
			//Auto join room.
			this._app42Plugin.joinRoom(event.roomId);
		}  
		/** 
		 * Invoked in response to a getOnlineUsers request. 
		 * @param event 
		 */  
		public function onGetOnlineUsersDone(event:LiveResult):void
		{
			trace(event);
		}  
		/** 
		 * Invoked in response to a getLiveUserInfo request. 
		 * @param event 
		 */  
		public function onGetLiveUserInfoDone(event:LiveUser):void
		{
			trace(event);
		}  
		/** 
		 * Invoked in response to a setCustomRoomData request. 
		 * @param event 
		 */  
		public function onSetCustomUserInfoDone(event:LiveUser):void
		{
			trace(event);
		}  
		/** 
		 * Invoked in response to a getMatchMaking Rooms request. 
		 * @param event 
		 */  
		public function onGetMatchedRoomsDone(event:MatchedRooms):void
		{
			trace(event);
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
		private function alertError(error:String):void
		{
			var alert:Alert = Alert.show( error, "Error", new ListCollection(
				[
					{ label: "OK", triggered: okButton_triggeredHandler }
				]) );
		}
		private function okButton_triggeredHandler( event:Event, data:Object ):void
		{
			//Nothing
		}
	}
	
}