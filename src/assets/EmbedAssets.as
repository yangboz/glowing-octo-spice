
package assets
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	/**
	 * EmbedAssets.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 26, 2014 11:59:25 AM
	 * @history 03/11/13,
	 */ 
	public class EmbedAssets
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		//Images
		//FrameTooltipShadow
		[Embed(source="images/metalworks/pattern-background-tile.png")]
		public static const BACK_GROUND_TEXTURE:Class;
		//
		[Embed(source="images/set_facts.png")]
		public static const ICONS_IMAGE:Class;
		//
		[Embed(source="images/set_facts.xml",mimeType="application/octet-stream")]
		public static const ICONS_XML:Class;
		//Particle system(config,texture)
		[Embed(source="particleSystem/particle-snow.pex", mimeType="application/octet-stream")]
		public static const StarParticleConfig:Class;
		//
		[Embed(source="particleSystem/particle-snow.png")]
		public static const StarParticle:Class;
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