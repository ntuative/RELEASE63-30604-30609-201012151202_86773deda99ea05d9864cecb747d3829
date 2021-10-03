package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1589:int;
      
      private var var_982:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1589;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_982;
      }
      
      public function flush() : Boolean
      {
         this.var_1589 = -1;
         this.var_982 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1589 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_982 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_982.push(param1.readInteger());
         }
         return true;
      }
   }
}
