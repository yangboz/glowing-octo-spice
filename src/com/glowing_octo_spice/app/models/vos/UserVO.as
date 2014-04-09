package com.glowing_octo_spice.app.models.vos
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * UserVO.as class.   	
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Jul 18, 2012 3:50:47 PM
	 */   	 
	public class UserVO
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		public var peerID:String="";//p2p peer id.
		public var roleIndex:int=-1;//user selected role index.
		public var roleName:String="";//user inputed role name.
		public var action:String = ACTION_IDLE;//the role's action.
		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		//
		public static const ACTION_IDLE:String = "idle";
		public static const ACTION_PLAY:String = "play";
		//--------------------------------------------------------------------------
		//
		//  Public properties
		//
		//-------------------------------------------------------------------------- 
		//
		public function get shortenPeerId():String
		{
			return this.peerID.substr(0,5).concat("...");
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
		public function UserVO()
		{
		}     	
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		public function toString():String
		{
			return "UserVO:"+shortenPeerId;
		}
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