package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_101:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1750:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_101);
         this.var_1750 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1750;
      }
   }
}
