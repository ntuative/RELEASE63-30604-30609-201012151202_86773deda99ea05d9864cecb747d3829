package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1577:Boolean;
      
      private var var_2209:int;
      
      private var var_380:Boolean;
      
      private var var_1008:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1577;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2209;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1008;
      }
      
      public function get owner() : Boolean
      {
         return this.var_380;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1008 != null)
         {
            this.var_1008.dispose();
            this.var_1008 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1577 = param1.readBoolean();
         if(this.var_1577)
         {
            this.var_2209 = param1.readInteger();
            this.var_380 = param1.readBoolean();
         }
         else
         {
            this.var_1008 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
