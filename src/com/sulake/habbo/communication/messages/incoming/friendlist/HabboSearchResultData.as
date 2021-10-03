package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2218:int;
      
      private var var_1459:String;
      
      private var var_1979:String;
      
      private var var_2219:Boolean;
      
      private var var_2222:Boolean;
      
      private var var_2221:int;
      
      private var var_1980:String;
      
      private var var_2220:String;
      
      private var var_1458:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2218 = param1.readInteger();
         this.var_1459 = param1.readString();
         this.var_1979 = param1.readString();
         this.var_2219 = param1.readBoolean();
         this.var_2222 = param1.readBoolean();
         param1.readString();
         this.var_2221 = param1.readInteger();
         this.var_1980 = param1.readString();
         this.var_2220 = param1.readString();
         this.var_1458 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2218;
      }
      
      public function get avatarName() : String
      {
         return this.var_1459;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1979;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2219;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2222;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2221;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1980;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2220;
      }
      
      public function get realName() : String
      {
         return this.var_1458;
      }
   }
}
