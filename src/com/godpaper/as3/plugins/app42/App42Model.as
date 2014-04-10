
package com.godpaper.as3.plugins.app42
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.plugins.IPlugData;
	
	
	/**
	 * App42Model.as class. A model collected variables for App42 plugin.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 9, 2014 2:35:25 PM
	 * @history 12/30/13,
	 */ 
	public class App42Model implements IPlugData
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _gameID:String;
		private var _boardID:String;
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
		public function App42Model()
		{
			//TODO: implement function
		}
		
		public function set gameID(value:String):void
		{
			_gameID = value;
		}
		
		public function get gameID():String
		{
			return _gameID;
		}
		
		public function set boardID(value:String):void
		{
			_boardID = value;
		}
		
		public function get boardID():String
		{
			return _boardID;
		}
		
		public function get hasCaptureIndicator():Boolean
		{
			//TODO: implement function
			return false;
		}
		
		public function get hasCheckIndicator():Boolean
		{
			//TODO: implement function
			return false;
		}
		
		public function get hasMoveIndicator():Boolean
		{
			//TODO: implement function
			return false;
		}
		
		public function toString():String
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