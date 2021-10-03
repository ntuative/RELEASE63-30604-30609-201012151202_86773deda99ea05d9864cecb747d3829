package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1440:String = "";
      
      private var var_2401:String = "";
      
      private var var_2409:String = "";
      
      private var var_2402:Number = 0;
      
      private var var_2404:Number = 0;
      
      private var var_2403:Number = 0;
      
      private var var_2410:Number = 0;
      
      private var var_2406:Boolean = false;
      
      private var var_2405:Boolean = false;
      
      private var var_2407:Boolean = false;
      
      private var var_2408:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1440 = param2;
         this.var_2401 = param3;
         this.var_2409 = param4;
         this.var_2402 = param5;
         this.var_2404 = param6;
         this.var_2403 = param7;
         this.var_2410 = param8;
         this.var_2406 = param9;
         this.var_2405 = param10;
         this.var_2407 = param11;
         this.var_2408 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1440;
      }
      
      public function get canvasId() : String
      {
         return this.var_2401;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2409;
      }
      
      public function get screenX() : Number
      {
         return this.var_2402;
      }
      
      public function get screenY() : Number
      {
         return this.var_2404;
      }
      
      public function get localX() : Number
      {
         return this.var_2403;
      }
      
      public function get localY() : Number
      {
         return this.var_2410;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2406;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2405;
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
