package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2206:int;
      
      private var var_2439:int;
      
      private var var_2440:int;
      
      private var _dayOffsets:Array;
      
      private var var_1720:Array;
      
      private var var_1719:Array;
      
      private var var_2442:int;
      
      private var var_2441:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2206 = param1.readInteger();
         this.var_2439 = param1.readInteger();
         this.var_2440 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1720 = [];
         this.var_1719 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1720.push(param1.readInteger());
            this.var_1719.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2441 = param1.readInteger();
         this.var_2442 = param1.readInteger();
         return true;
      }
   }
}
