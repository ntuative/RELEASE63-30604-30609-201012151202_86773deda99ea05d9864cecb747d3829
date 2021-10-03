package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_204:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_245:String = "RWUIUE_PEER";
      
      public static const const_1402:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_924:int = 2;
      
      public static const const_1057:int = 3;
      
      public static const const_1441:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1489:String = "";
      
      private var var_2022:int;
      
      private var var_2089:int = 0;
      
      private var var_2088:int = 0;
      
      private var var_579:String = "";
      
      private var var_39:BitmapData = null;
      
      private var var_230:Array;
      
      private var var_1326:int = 0;
      
      private var var_2302:String = "";
      
      private var var_2303:int = 0;
      
      private var var_2301:int = 0;
      
      private var var_1536:Boolean = false;
      
      private var var_1458:String = "";
      
      private var var_2549:Boolean = false;
      
      private var var_2545:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2547:Boolean = false;
      
      private var var_2546:Boolean = false;
      
      private var var_2552:Boolean = false;
      
      private var var_2551:Boolean = false;
      
      private var var_2548:Boolean = false;
      
      private var var_2544:Boolean = false;
      
      private var var_2550:int = 0;
      
      private var var_1535:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_230 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1489 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1489;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2022 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2022;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2089 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2089;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2088 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2088;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_579 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_579;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_39 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_230 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_230;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1326 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1326;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2302 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2302;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2549 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2549;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2547 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2547;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2546 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2546;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2552 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2552;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2551 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2551;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2548 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2548;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2544 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2544;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2550 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2550;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2545 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2545;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1535 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1535;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2303;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2301 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2301;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1536 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1536;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1458 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1458;
      }
   }
}
