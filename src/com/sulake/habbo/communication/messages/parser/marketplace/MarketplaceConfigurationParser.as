package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1348:Boolean;
      
      private var var_1975:int;
      
      private var var_1456:int;
      
      private var var_1455:int;
      
      private var var_1978:int;
      
      private var var_1973:int;
      
      private var var_1977:int;
      
      private var var_1976:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1348;
      }
      
      public function get commission() : int
      {
         return this.var_1975;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1456;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1455;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_1973;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_1978;
      }
      
      public function get expirationHours() : int
      {
         return this.var_1977;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_1976;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1348 = param1.readBoolean();
         this.var_1975 = param1.readInteger();
         this.var_1456 = param1.readInteger();
         this.var_1455 = param1.readInteger();
         this.var_1973 = param1.readInteger();
         this.var_1978 = param1.readInteger();
         this.var_1977 = param1.readInteger();
         this.var_1976 = param1.readInteger();
         return true;
      }
   }
}
