package com.godpaper.as3.services
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	/**
	 * IConductService.as class.This interface is used to transform conduct information,</br>
	 * Using interfaces makes it easy to switch the actual service classes.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 9.0
	 * Created Feb 15, 2011 3:56:56 PM
	 */
	public interface IConductService
	{
		//--------------------------------------------------------------------------
		//
		//  Public properties
		//
		//-------------------------------------------------------------------------- 
		function get connected():Boolean;
		//--------------------------------------------------------------------------
		//
		//  Protected properties
		//
		//-------------------------------------------------------------------------- 

		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		//Optional
		function initialization(...arg):void;
		/**
		 * This function will transfor a string to your game server
		 * and notify the result in the chess piece manager.
		 * @param type the tpye of conduct's brevity.
		 * @param value the value of conduct's brevity.
		 */
		function transforBrevity(type:String,value:String):String;
	}
}

