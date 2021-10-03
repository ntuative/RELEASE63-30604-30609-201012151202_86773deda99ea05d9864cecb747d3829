package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_1271:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_792:String = "RWSSM_STORE_SOUND";
      
      public static const const_749:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_426:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_426;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_426 = param1;
      }
   }
}
