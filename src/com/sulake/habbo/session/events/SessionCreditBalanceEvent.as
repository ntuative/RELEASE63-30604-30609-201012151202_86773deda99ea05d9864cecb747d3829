package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class SessionCreditBalanceEvent extends Event
   {
      
      public static const const_167:String = "session_credit_balance";
       
      
      private var var_2297:int;
      
      public function SessionCreditBalanceEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_167,param2,param3);
         this.var_2297 = param1;
      }
      
      public function get credits() : int
      {
         return this.var_2297;
      }
   }
}
