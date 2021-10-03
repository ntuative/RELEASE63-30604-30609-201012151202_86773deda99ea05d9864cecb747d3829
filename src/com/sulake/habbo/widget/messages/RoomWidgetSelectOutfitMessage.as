package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_923:String = "select_outfit";
       
      
      private var var_2213:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_923);
         this.var_2213 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2213;
      }
   }
}
