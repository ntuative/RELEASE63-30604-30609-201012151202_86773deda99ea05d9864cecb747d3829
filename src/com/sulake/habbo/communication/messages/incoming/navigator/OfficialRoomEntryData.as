package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1074:int = 1;
      
      public static const const_610:int = 2;
      
      public static const const_602:int = 3;
      
      public static const const_1423:int = 4;
       
      
      private var _index:int;
      
      private var var_2035:String;
      
      private var var_2038:String;
      
      private var var_2033:Boolean;
      
      private var var_2036:String;
      
      private var var_819:String;
      
      private var var_2037:int;
      
      private var var_2034:int;
      
      private var _type:int;
      
      private var var_1944:String;
      
      private var var_790:GuestRoomData;
      
      private var var_789:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2035 = param1.readString();
         this.var_2038 = param1.readString();
         this.var_2033 = param1.readInteger() == 1;
         this.var_2036 = param1.readString();
         this.var_819 = param1.readString();
         this.var_2037 = param1.readInteger();
         this.var_2034 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1074)
         {
            this.var_1944 = param1.readString();
         }
         else if(this._type == const_602)
         {
            this.var_789 = new PublicRoomData(param1);
         }
         else if(this._type == const_610)
         {
            this.var_790 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_790 != null)
         {
            this.var_790.dispose();
            this.var_790 = null;
         }
         if(this.var_789 != null)
         {
            this.var_789.dispose();
            this.var_789 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2035;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2038;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2033;
      }
      
      public function get picText() : String
      {
         return this.var_2036;
      }
      
      public function get picRef() : String
      {
         return this.var_819;
      }
      
      public function get folderId() : int
      {
         return this.var_2037;
      }
      
      public function get tag() : String
      {
         return this.var_1944;
      }
      
      public function get userCount() : int
      {
         return this.var_2034;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_790;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_789;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1074)
         {
            return 0;
         }
         if(this.type == const_610)
         {
            return this.var_790.maxUserCount;
         }
         if(this.type == const_602)
         {
            return this.var_789.maxUsers;
         }
         return 0;
      }
   }
}
