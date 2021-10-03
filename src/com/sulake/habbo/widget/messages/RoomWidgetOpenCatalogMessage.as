package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_571:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1075:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2462:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_571);
         this.var_2462 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2462;
      }
   }
}
