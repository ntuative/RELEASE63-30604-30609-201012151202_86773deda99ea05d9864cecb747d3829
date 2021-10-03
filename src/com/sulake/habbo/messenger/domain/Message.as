package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_707:int = 1;
      
      public static const const_720:int = 2;
      
      public static const const_679:int = 3;
      
      public static const const_979:int = 4;
      
      public static const const_684:int = 5;
      
      public static const const_925:int = 6;
       
      
      private var _type:int;
      
      private var var_1125:int;
      
      private var var_2217:String;
      
      private var var_2572:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1125 = param2;
         this.var_2217 = param3;
         this.var_2572 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2217;
      }
      
      public function get time() : String
      {
         return this.var_2572;
      }
      
      public function get senderId() : int
      {
         return this.var_1125;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
