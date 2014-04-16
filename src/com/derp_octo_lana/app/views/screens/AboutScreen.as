
package com.derp_octo_lana.app.views.screens
{
	import feathers.controls.ScrollText;
	import feathers.controls.Scroller;
	import feathers.layout.AnchorLayout;
	import feathers.layout.AnchorLayoutData;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * AboutScreen.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 15, 2013 3:15:52 PM
	 * @history 05/00/12,
	 */ 
	public class AboutScreen extends ScreenBase
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _scrollText:ScrollText;
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
		public function AboutScreen()
		{
			super();
			//
			this.headerTitle = 'ABOUT';
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
		override protected function initialize():void
		{
			super.initialize();
			//
			this.layout = new AnchorLayout();
			this._scrollText = new ScrollText();
			//
			this._scrollText.isHTML = true;
			this._scrollText.layoutData = new AnchorLayoutData(0, 0, 0, 0);
//			this._scrollText.scrollBarDisplayMode = Scroller.SCROLL_POLICY_ON;
			this._scrollText.verticalScrollPolicy = Scroller.SCROLL_POLICY_ON;
			this.addChild(this._scrollText);
			this._scrollText.y = 70;
			this._scrollText.text = "<p>The object of the game is to identify a 'Set' of three cards from 12 cards laid out on the table. Each card has a variation of the following four features:</p><p>1) <b>COLOR:</b>Each card is red, green, or blue. <br />2) <b>SYMBOL:</b>Each card contains ovals, squiggles, or diamonds. <br />3) <b>NUMBER:</b>Each card has one, two, or three symbols. <br />4) <b>SHADING:</b>Each card is solid, open, or striped. <br /></p><p>A 'Set' consists of three cards in which each feature is EITHER the same on each card OR is different on each card. That is to say, any feature in the 'Set' of three cards is either common to all three cards or is different on each card.</p><h4>Examples of sets: </h4>1) <b>color:</b> different on each card, <b>symbol:</b> the same on each card (oval), <b>number:</b> the same on each (two), <b>shading:</b> the same on each card (solid)<table class='small'><tr><td class='card'><br /><br /></td><td class='card'><br /><br /></td><td class='card'><br /><br /></td></tr></table>2) <b>color:</b> different on each card, <b>symbol:</b> different on each card, <b>number:</b> different on each card, <b>shading:</b> different on each card<table class='small'><tr><td class='card'><br /><br /></td><td class='card'><br /></td><td class='card'><br /></td></tr></table>3) <b>color:</b> the same on each card (green), <b>symbol:</b> the same on each card (diamond), <b>number:</b> different on each card, <b>shading:</b> different on each card<table class='small'><tr><td class='card'><br /><br /></td><td class='card'><br /><br /><br /></td><td class='card'><br /></td></tr></table>";
		}
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}