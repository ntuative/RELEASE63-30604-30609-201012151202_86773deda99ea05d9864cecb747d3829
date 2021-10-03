package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_870:int;
      
      private var var_634:Boolean;
      
      private var var_1432:Boolean;
      
      private var var_579:String;
      
      private var var_1189:int;
      
      private var var_1489:String;
      
      private var var_1457:String;
      
      private var var_1458:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_870 = param1.readInteger();
         this.var_634 = param1.readBoolean();
         this.var_1432 = param1.readBoolean();
         this.var_579 = param1.readString();
         this.var_1189 = param1.readInteger();
         this.var_1489 = param1.readString();
         this.var_1457 = param1.readString();
         this.var_1458 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_870;
      }
      
      public function get online() : Boolean
      {
         return this.var_634;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1432;
      }
      
      public function get figure() : String
      {
         return this.var_579;
      }
      
      public function get categoryId() : int
      {
         return this.var_1189;
      }
      
      public function get motto() : String
      {
         return this.var_1489;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1457;
      }
      
      public function get realName() : String
      {
         return this.var_1458;
      }
   }
}
