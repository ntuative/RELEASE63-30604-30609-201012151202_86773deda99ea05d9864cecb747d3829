package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1048:String = "M";
      
      public static const const_1384:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_150:Number = 0;
      
      private var var_221:int = 0;
      
      private var _name:String = "";
      
      private var var_2085:int = 0;
      
      private var var_786:String = "";
      
      private var var_579:String = "";
      
      private var var_2086:String = "";
      
      private var var_2022:int;
      
      private var var_2089:int = 0;
      
      private var var_2090:String = "";
      
      private var var_2091:int = 0;
      
      private var var_2088:int = 0;
      
      private var var_2087:String = "";
      
      private var var_155:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_155 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_2085;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2085 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_786;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_786 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_579;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_579 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2086;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2086 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2022;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2022 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2089;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2089 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2090;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2090 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2091;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2091 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2088;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2088 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2087;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2087 = param1;
         }
      }
   }
}
