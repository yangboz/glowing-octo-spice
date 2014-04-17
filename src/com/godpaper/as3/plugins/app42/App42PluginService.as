
package com.godpaper.as3.plugins.app42
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.services.IConductService;
	import com.shephertz.app42.paas.sdk.as3.App42API;
	import com.shephertz.app42.paas.sdk.as3.ServiceAPI;
	import com.shephertz.app42.paas.sdk.as3.abtest.ABTestService;
	import com.shephertz.app42.paas.sdk.as3.achievement.AchievementService;
	import com.shephertz.app42.paas.sdk.as3.avatar.AvatarService;
	import com.shephertz.app42.paas.sdk.as3.buddy.BuddyService;
	import com.shephertz.app42.paas.sdk.as3.email.EmailService;
	import com.shephertz.app42.paas.sdk.as3.game.GameService;
	import com.shephertz.app42.paas.sdk.as3.game.RewardService;
	import com.shephertz.app42.paas.sdk.as3.game.ScoreBoardService;
	import com.shephertz.app42.paas.sdk.as3.game.ScoreService;
	import com.shephertz.app42.paas.sdk.as3.log.LogService;
	import com.shephertz.app42.paas.sdk.as3.message.QueueService;
	import com.shephertz.app42.paas.sdk.as3.push.PushNotificationService;
	import com.shephertz.app42.paas.sdk.as3.review.ReviewService;
	import com.shephertz.app42.paas.sdk.as3.session.SessionService;
	import com.shephertz.app42.paas.sdk.as3.social.SocialService;
	import com.shephertz.app42.paas.sdk.as3.storage.StorageService;
	import com.shephertz.app42.paas.sdk.as3.user.UserService;
	import com.shephertz.appwarp.WarpClient;
	import com.shephertz.appwarp.types.ConnectionState;
	
	
	/**
	 * App42PluginService.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Apr 9, 2014 2:36:43 PM
	 * @history 12/30/13,
	 */ 
	public class App42PluginService implements IConductService
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		public var serviceAPI:ServiceAPI;
		//
		public var gameService:GameService;
		public var scoreService:ScoreService;
		public var scoreBoardService:ScoreBoardService;
		public var rewardService:RewardService;
		public var storageService:StorageService; 
		public var userService:UserService;
		public var reviewService:ReviewService;
		public var sessionService:SessionService;
		public var achivementService:AchievementService;
		public var buddyService:BuddyService;
		public var socialService:SocialService;
		public var logService:LogService;
		public var emailService:EmailService;
		public var queueService:QueueService;
		public var avatarService:AvatarService;
		public var abTestService:ABTestService;
		public var pushNotificationService:PushNotificationService;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const APP42_API_KEY:String = "bed6761e541cd0a135104c31b2f736a02b7294eef20daee891c1a5b864fb93fd";
		private static const APP42_SECRET_KEY:String = "b3d47468ec8dd5a232c5b6dbd4efd5c2f4fc954575c809fc16f4e6252dd1cdd6";
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
		public function App42PluginService()
		{
//			this.serviceAPI = new ServiceAPI(APP42_API_KEY,APP42_SECRET_KEY);
		}
		
		public function get connected():Boolean
		{
//			return App42API.loggedInUser!="";
//			return false;
			return (WarpClient.getInstance().getConnectionState()==ConnectionState.connected);
		}
		/**
		 * After initialziation,developer needs to call the buildXXXService method on ServiceAPI instance to get the instance of the particular API that you wish to build. 
		 * @param arg
		 * @see http://api.shephertz.com/app42-docs/multivariate-ab-testing/
		 */		
		public function initialization(...arg):void
		{
			this.gameService=App42API.buildGameService();
			this.scoreService=App42API.buildScoreService();
			this.scoreBoardService=App42API.buildScoreBoardService();
			this.rewardService=App42API.buildRewardService();
			this.storageService=App42API.buildStorageService(); 
			this.userService=App42API.buildUserService();
			this.reviewService=App42API.buildReviewService();
			this.sessionService=App42API.buildSessionService();
			this.achivementService=App42API.buildAchievementService();
			this.buddyService=App42API.buildBuddyService();
			this.socialService=App42API.buildSocialService();
			this.logService=App42API.buildLogService();
			this.emailService=App42API.buildEmailService();
			this.queueService=App42API.buildQueueService();
			this.avatarService=App42API.buildAvatarService();
			this.abTestService=App42API.buildABTestService();
			this.pushNotificationService=App42API.buildPushNotificationService();
		}
		
		public function transforBrevity(type:String, value:String):String
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