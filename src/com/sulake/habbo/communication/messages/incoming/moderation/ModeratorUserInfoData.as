package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2145:int;
      
      private var var_2143:int;
      
      private var var_634:Boolean;
      
      private var var_2147:int;
      
      private var var_2144:int;
      
      private var var_2146:int;
      
      private var var_2148:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2145 = param1.readInteger();
         this.var_2143 = param1.readInteger();
         this.var_634 = param1.readBoolean();
         this.var_2147 = param1.readInteger();
         this.var_2144 = param1.readInteger();
         this.var_2146 = param1.readInteger();
         this.var_2148 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2145;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2143;
      }
      
      public function get online() : Boolean
      {
         return this.var_634;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2147;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2144;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2146;
      }
      
      public function get banCount() : int
      {
         return this.var_2148;
      }
   }
}
