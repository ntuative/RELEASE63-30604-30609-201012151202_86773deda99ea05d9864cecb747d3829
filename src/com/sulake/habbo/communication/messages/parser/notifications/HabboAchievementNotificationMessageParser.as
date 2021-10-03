package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1224:int;
      
      private var var_1429:int;
      
      private var var_2080:int;
      
      private var var_1514:int;
      
      private var var_1225:int;
      
      private var var_2117:String = "";
      
      private var var_2312:String = "";
      
      private var var_2313:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1224 = param1.readInteger();
         this.var_2117 = param1.readString();
         this.var_1429 = param1.readInteger();
         this.var_2080 = param1.readInteger();
         this.var_1514 = param1.readInteger();
         this.var_1225 = param1.readInteger();
         this.var_2313 = param1.readInteger();
         this.var_2312 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1224;
      }
      
      public function get points() : int
      {
         return this.var_1429;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2080;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1514;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1225;
      }
      
      public function get badgeID() : String
      {
         return this.var_2117;
      }
      
      public function get achievementID() : int
      {
         return this.var_2313;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2312;
      }
   }
}
