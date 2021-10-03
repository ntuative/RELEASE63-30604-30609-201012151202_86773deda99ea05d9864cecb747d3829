package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2465:Boolean = false;
      
      private var var_2464:int = 0;
      
      private var var_2466:int = 0;
      
      private var var_2403:int = 0;
      
      private var var_2410:int = 0;
      
      private var var_151:Number = 0;
      
      private var var_150:Number = 0;
      
      private var var_221:String = "";
      
      private var _type:int = 0;
      
      private var var_2696:String = "";
      
      private var var_1388:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_155:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2465 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_155 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2465;
      }
      
      public function get wallX() : Number
      {
         return this.var_2464;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_2464 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2466;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_2466 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2403;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_2403 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2410;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_2410 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_151;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_151 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_150;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_150 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_221;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_221 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_155)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_155)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_155)
         {
            this._data = param1;
         }
      }
   }
}
