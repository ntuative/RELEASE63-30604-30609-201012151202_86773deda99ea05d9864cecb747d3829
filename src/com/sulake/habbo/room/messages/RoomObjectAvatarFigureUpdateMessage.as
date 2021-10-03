package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_579:String;
      
      private var var_2192:String;
      
      private var var_870:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_579 = param1;
         this.var_870 = param2;
         this.var_2192 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_579;
      }
      
      public function get race() : String
      {
         return this.var_2192;
      }
      
      public function get gender() : String
      {
         return this.var_870;
      }
   }
}
