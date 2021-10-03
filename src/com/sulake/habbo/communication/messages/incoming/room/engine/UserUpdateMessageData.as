package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_150:Number = 0;
      
      private var var_2598:Number = 0;
      
      private var var_2599:Number = 0;
      
      private var var_2597:Number = 0;
      
      private var var_2596:Number = 0;
      
      private var var_221:int = 0;
      
      private var var_2390:int = 0;
      
      private var var_287:Array;
      
      private var var_2595:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_287 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_151 = param3;
         this.var_150 = param4;
         this.var_2598 = param5;
         this.var_221 = param6;
         this.var_2390 = param7;
         this.var_2599 = param8;
         this.var_2597 = param9;
         this.var_2596 = param10;
         this.var_2595 = param11;
         this.var_287 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_151;
      }
      
      public function get z() : Number
      {
         return this.var_150;
      }
      
      public function get localZ() : Number
      {
         return this.var_2598;
      }
      
      public function get targetX() : Number
      {
         return this.var_2599;
      }
      
      public function get targetY() : Number
      {
         return this.var_2597;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2596;
      }
      
      public function get dir() : int
      {
         return this.var_221;
      }
      
      public function get dirHead() : int
      {
         return this.var_2390;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2595;
      }
      
      public function get actions() : Array
      {
         return this.var_287.slice();
      }
   }
}
