package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_135:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_129:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1052:String;
      
      private var var_1346:Array;
      
      private var var_1131:Array;
      
      private var var_1724:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1052 = param2;
         this.var_1346 = param3;
         this.var_1131 = param4;
         if(this.var_1131 == null)
         {
            this.var_1131 = [];
         }
         this.var_1724 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1052;
      }
      
      public function get choices() : Array
      {
         return this.var_1346.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1131.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1724;
      }
   }
}
