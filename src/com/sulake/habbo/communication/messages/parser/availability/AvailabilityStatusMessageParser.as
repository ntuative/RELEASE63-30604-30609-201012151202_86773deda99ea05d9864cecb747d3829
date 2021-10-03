package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1197:Boolean;
      
      private var var_1533:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1197;
      }
      
      public function get onShutDown() : Boolean
      {
         return this.var_1533;
      }
      
      public function flush() : Boolean
      {
         this.var_1197 = false;
         this.var_1533 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1197 = param1.readInteger() > 0;
         this.var_1533 = param1.readInteger() > 0;
         return true;
      }
   }
}
