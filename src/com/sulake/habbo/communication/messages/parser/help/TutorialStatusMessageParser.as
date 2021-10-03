package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1310:Boolean;
      
      private var var_1061:Boolean;
      
      private var var_1311:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1310;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1061;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1311;
      }
      
      public function flush() : Boolean
      {
         this.var_1310 = false;
         this.var_1061 = false;
         this.var_1311 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1310 = param1.readBoolean();
         this.var_1061 = param1.readBoolean();
         this.var_1311 = param1.readBoolean();
         return true;
      }
   }
}
