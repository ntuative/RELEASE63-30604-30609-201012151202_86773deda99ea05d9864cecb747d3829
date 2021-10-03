package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1984:int;
      
      private var var_1363:String;
      
      private var _objId:int;
      
      private var var_1436:int;
      
      private var _category:int;
      
      private var var_1884:String;
      
      private var var_1985:Boolean;
      
      private var var_1983:Boolean;
      
      private var var_1986:Boolean;
      
      private var var_1987:Boolean;
      
      private var var_1988:int;
      
      private var var_1388:int;
      
      private var var_1725:String = "";
      
      private var var_2319:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_1984 = param1;
         this.var_1363 = param2;
         this._objId = param3;
         this.var_1436 = param4;
         this._category = param5;
         this.var_1884 = param6;
         this.var_1985 = param7;
         this.var_1983 = param8;
         this.var_1986 = param9;
         this.var_1987 = param10;
         this.var_1988 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1725 = param1;
         this.var_1388 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_1984;
      }
      
      public function get itemType() : String
      {
         return this.var_1363;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1436;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1884;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_1985;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_1983;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_1986;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_1987;
      }
      
      public function get expiryTime() : int
      {
         return this.var_1988;
      }
      
      public function get slotId() : String
      {
         return this.var_1725;
      }
      
      public function get songId() : int
      {
         return this.var_2319;
      }
      
      public function get extra() : int
      {
         return this.var_1388;
      }
   }
}
