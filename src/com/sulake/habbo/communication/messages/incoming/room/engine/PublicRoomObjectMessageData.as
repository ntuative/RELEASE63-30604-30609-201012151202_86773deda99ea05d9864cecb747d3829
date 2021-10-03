package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_150:Number = 0;
      
      private var var_221:int = 0;
      
      private var var_441:int = 0;
      
      private var var_542:int = 0;
      
      private var var_155:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_155 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_155)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_155)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_155)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_221;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_221 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_441;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_441 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_542;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_542 = param1;
         }
      }
   }
}
