package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2232:Number = 0.0;
      
      private var var_2233:Number = 0.0;
      
      private var var_2235:Number = 0.0;
      
      private var var_2234:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2232 = param1;
         this.var_2233 = param2;
         this.var_2235 = param3;
         this.var_2234 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2232;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2233;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2235;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2234;
      }
   }
}
