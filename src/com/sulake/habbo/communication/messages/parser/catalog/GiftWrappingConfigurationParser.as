package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2389:Boolean;
      
      private var var_2388:int;
      
      private var var_1558:Array;
      
      private var var_660:Array;
      
      private var var_659:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2389;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2388;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1558;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_660;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_659;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1558 = [];
         this.var_660 = [];
         this.var_659 = [];
         this.var_2389 = param1.readBoolean();
         this.var_2388 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1558.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_660.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_659.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
