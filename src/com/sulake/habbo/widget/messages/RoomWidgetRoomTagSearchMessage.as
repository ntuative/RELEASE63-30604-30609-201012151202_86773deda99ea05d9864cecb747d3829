package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_785:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1944:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_785);
         this.var_1944 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1944;
      }
   }
}
