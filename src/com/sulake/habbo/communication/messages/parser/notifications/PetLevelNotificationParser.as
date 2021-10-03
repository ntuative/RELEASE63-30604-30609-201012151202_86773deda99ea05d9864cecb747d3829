package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1589:int;
      
      private var var_2525:String;
      
      private var var_1224:int;
      
      private var var_579:String;
      
      private var var_1384:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1589 = param1.readInteger();
         this.var_2525 = param1.readString();
         this.var_1224 = param1.readInteger();
         this.var_579 = param1.readString();
         this.var_1384 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1589;
      }
      
      public function get petName() : String
      {
         return this.var_2525;
      }
      
      public function get level() : int
      {
         return this.var_1224;
      }
      
      public function get figure() : String
      {
         return this.var_579;
      }
      
      public function get petType() : int
      {
         return this.var_1384;
      }
   }
}
