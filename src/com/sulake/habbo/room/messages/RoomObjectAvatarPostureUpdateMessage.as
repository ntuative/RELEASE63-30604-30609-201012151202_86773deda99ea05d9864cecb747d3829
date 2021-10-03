package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1939:String;
      
      private var var_1401:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         this.var_1939 = param1;
         this.var_1401 = param2;
      }
      
      public function get postureType() : String
      {
         return this.var_1939;
      }
      
      public function get parameter() : String
      {
         return this.var_1401;
      }
   }
}
