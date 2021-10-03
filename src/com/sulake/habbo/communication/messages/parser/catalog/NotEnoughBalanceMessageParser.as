package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1711:int = 0;
      
      private var var_1712:int = 0;
      
      private var var_1698:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1711;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1712;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1698;
      }
      
      public function flush() : Boolean
      {
         this.var_1711 = 0;
         this.var_1712 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1711 = param1.readInteger();
         this.var_1712 = param1.readInteger();
         this.var_1698 = param1.readInteger();
         return true;
      }
   }
}
