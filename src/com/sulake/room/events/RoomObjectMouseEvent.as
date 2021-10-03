package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_228:String = "ROE_MOUSE_CLICK";
      
      public static const const_1677:String = "ROE_MOUSE_ENTER";
      
      public static const const_411:String = "ROE_MOUSE_MOVE";
      
      public static const const_1630:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1731:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_446:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1440:String = "";
      
      private var var_2405:Boolean;
      
      private var var_2406:Boolean;
      
      private var var_2407:Boolean;
      
      private var var_2408:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1440 = param2;
         this.var_2405 = param5;
         this.var_2406 = param6;
         this.var_2407 = param7;
         this.var_2408 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1440;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2405;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2406;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2407;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2408;
      }
   }
}
