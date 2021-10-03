package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_753:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2117:String;
      
      private var var_2118:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_753,param3,param4);
         this.var_2117 = param1;
         this.var_2118 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2117;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2118;
      }
   }
}
