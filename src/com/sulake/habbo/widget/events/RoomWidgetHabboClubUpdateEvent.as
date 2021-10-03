package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_211:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2017:int = 0;
      
      private var var_2016:int = 0;
      
      private var var_2015:int = 0;
      
      private var var_2013:Boolean = false;
      
      private var var_2014:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_211,param6,param7);
         this.var_2017 = param1;
         this.var_2016 = param2;
         this.var_2015 = param3;
         this.var_2013 = param4;
         this.var_2014 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2017;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2016;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2015;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2013;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2014;
      }
   }
}
