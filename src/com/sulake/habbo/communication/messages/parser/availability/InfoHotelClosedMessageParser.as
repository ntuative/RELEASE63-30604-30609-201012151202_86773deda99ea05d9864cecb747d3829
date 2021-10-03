package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InfoHotelClosedMessageParser implements IMessageParser
   {
       
      
      private var _openHour:int;
      
      private var var_1630:int;
      
      private var var_1655:Boolean;
      
      public function InfoHotelClosedMessageParser()
      {
         super();
      }
      
      public function get openHour() : int
      {
         return this._openHour;
      }
      
      public function get openMinute() : int
      {
         return this.var_1630;
      }
      
      public function get userThrownOutAtClose() : Boolean
      {
         return this.var_1655;
      }
      
      public function flush() : Boolean
      {
         this._openHour = 0;
         this.var_1630 = 0;
         this.var_1655 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._openHour = param1.readInteger();
         this.var_1630 = param1.readInteger();
         this.var_1655 = param1.readInteger() > 0;
         return true;
      }
   }
}
