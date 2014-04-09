
package com.godpaper.as3.plugins
{
	import org.osflash.signals.Signal;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * IPluginSignal.as class. Common used(game based) signals listing here. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 9, 2014 3:19:23 PM
	 * @history 12/30/13,
	 */
	public interface IPluginRoom
	{
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		//Common game signals.
		function get signal_room_refreshed():Signal;
		function get signal_hoster_joined():Signal;
		function get signal_user_joined():Signal;
		function get signal_piece_placed():Signal;
		function get signal_game_tie():Signal;
		function get signal_game_reset():Signal;
		function get signal_player_win():Signal;
		//Common game room functions
		function createRoom(... args):void;
		function joinRoom(... args):void;
		function refreshRoomList(... args):void;
		//--------------------------------------------------------------------------
		//
		// Protected properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
	}
}