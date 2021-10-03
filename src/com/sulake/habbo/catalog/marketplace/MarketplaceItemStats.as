package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2206:int;
      
      private var var_2439:int;
      
      private var var_2440:int;
      
      private var _dayOffsets:Array;
      
      private var var_1720:Array;
      
      private var var_1719:Array;
      
      private var var_2442:int;
      
      private var var_2441:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2206;
      }
      
      public function get offerCount() : int
      {
         return this.var_2439;
      }
      
      public function get historyLength() : int
      {
         return this.var_2440;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1720;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1719;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2442;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2441;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2206 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2439 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2440 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1720 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1719 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2442 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2441 = param1;
      }
   }
}
