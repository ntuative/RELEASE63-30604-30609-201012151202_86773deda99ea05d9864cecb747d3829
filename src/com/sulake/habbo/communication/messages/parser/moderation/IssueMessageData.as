package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_154:int = 1;
      
      public static const const_343:int = 2;
      
      public static const const_1419:int = 3;
       
      
      private var var_2054:int;
      
      private var _state:int;
      
      private var var_1189:int;
      
      private var var_2052:int;
      
      private var var_1495:int;
      
      private var var_2049:int;
      
      private var var_2053:int = 0;
      
      private var var_2048:int;
      
      private var var_2043:String;
      
      private var var_1262:int;
      
      private var var_1588:String;
      
      private var var_2046:int;
      
      private var var_2047:String;
      
      private var _message:String;
      
      private var var_1928:int;
      
      private var var_889:String;
      
      private var var_1494:int;
      
      private var var_2051:String;
      
      private var var_309:int;
      
      private var var_2044:String;
      
      private var var_2045:String;
      
      private var var_1945:int;
      
      private var var_2050:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2054;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1189;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2052;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1495;
      }
      
      public function get priority() : int
      {
         return this.var_2049 + this.var_2053;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2048;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2043;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1262;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1588;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2046;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2047;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1928;
      }
      
      public function get roomName() : String
      {
         return this.var_889;
      }
      
      public function get roomType() : int
      {
         return this.var_1494;
      }
      
      public function get flatType() : String
      {
         return this.var_2051;
      }
      
      public function get flatId() : int
      {
         return this.var_309;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2044;
      }
      
      public function get roomResources() : String
      {
         return this.var_2045;
      }
      
      public function get unitPort() : int
      {
         return this.var_1945;
      }
      
      public function get worldId() : int
      {
         return this.var_2050;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2054 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1189 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2052 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1495 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2049 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2053 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2048 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2043 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1262 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1588 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2046 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2047 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_1928 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_889 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1494 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2051 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_309 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2044 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2045 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_1945 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2050 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1495) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
