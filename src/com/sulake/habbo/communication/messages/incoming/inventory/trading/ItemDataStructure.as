package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1938:int;
      
      private var var_1363:String;
      
      private var var_1935:int;
      
      private var var_1934:int;
      
      private var _category:int;
      
      private var var_1884:String;
      
      private var var_1388:int;
      
      private var var_1931:int;
      
      private var var_1933:int;
      
      private var var_1937:int;
      
      private var var_1936:int;
      
      private var var_1932:Boolean;
      
      private var var_2680:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_1938 = param1;
         this.var_1363 = param2;
         this.var_1935 = param3;
         this.var_1934 = param4;
         this._category = param5;
         this.var_1884 = param6;
         this.var_1388 = param7;
         this.var_1931 = param8;
         this.var_1933 = param9;
         this.var_1937 = param10;
         this.var_1936 = param11;
         this.var_1932 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_1938;
      }
      
      public function get itemType() : String
      {
         return this.var_1363;
      }
      
      public function get roomItemID() : int
      {
         return this.var_1935;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_1934;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1884;
      }
      
      public function get extra() : int
      {
         return this.var_1388;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_1931;
      }
      
      public function get creationDay() : int
      {
         return this.var_1933;
      }
      
      public function get creationMonth() : int
      {
         return this.var_1937;
      }
      
      public function get creationYear() : int
      {
         return this.var_1936;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_1932;
      }
      
      public function get songID() : int
      {
         return this.var_1388;
      }
   }
}
