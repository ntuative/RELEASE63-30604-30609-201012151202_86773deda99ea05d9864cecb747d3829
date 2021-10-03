package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1224:int;
      
      private var var_263:String;
      
      private var var_2469:int;
      
      private var var_2080:int;
      
      private var var_1514:int;
      
      private var var_2468:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1224 = param1.readInteger();
         this.var_263 = param1.readString();
         this.var_2469 = param1.readInteger();
         this.var_2080 = param1.readInteger();
         this.var_1514 = param1.readInteger();
         this.var_2468 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_263;
      }
      
      public function get level() : int
      {
         return this.var_1224;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2469;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2080;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1514;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2468;
      }
   }
}
