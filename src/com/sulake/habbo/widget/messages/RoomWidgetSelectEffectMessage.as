package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_629:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_813:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_638:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_729:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_729 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_729;
      }
   }
}
