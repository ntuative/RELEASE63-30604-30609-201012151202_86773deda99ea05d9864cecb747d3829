package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditBalanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_167:String = "RWCBUE_CREDIT_BALANCE";
       
      
      private var var_1948:int;
      
      public function RoomWidgetCreditBalanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_167,param2,param3);
         this.var_1948 = param1;
      }
      
      public function get balance() : int
      {
         return this.var_1948;
      }
   }
}
