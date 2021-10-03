package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1466:int;
      
      private var var_1751:int;
      
      private var var_1752:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1751 = param1.readInteger();
         this.var_1466 = param1.readInteger();
         this.var_1752 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1466 = 0;
         this.var_1751 = 0;
         this.var_1752 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1466;
      }
      
      public function get messageId() : int
      {
         return this.var_1751;
      }
      
      public function get timestamp() : String
      {
         return this.var_1752;
      }
   }
}
