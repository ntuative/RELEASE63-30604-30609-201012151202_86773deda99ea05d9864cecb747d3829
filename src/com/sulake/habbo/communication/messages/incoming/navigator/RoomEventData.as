package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_971:Boolean;
      
      private var var_2128:int;
      
      private var var_2127:String;
      
      private var var_309:int;
      
      private var var_2130:int;
      
      private var var_2132:String;
      
      private var var_2131:String;
      
      private var var_2129:String;
      
      private var var_757:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_757 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_971 = false;
            return;
         }
         this.var_971 = true;
         this.var_2128 = int(_loc2_);
         this.var_2127 = param1.readString();
         this.var_309 = int(param1.readString());
         this.var_2130 = param1.readInteger();
         this.var_2132 = param1.readString();
         this.var_2131 = param1.readString();
         this.var_2129 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_757.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_757 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2128;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2127;
      }
      
      public function get flatId() : int
      {
         return this.var_309;
      }
      
      public function get eventType() : int
      {
         return this.var_2130;
      }
      
      public function get eventName() : String
      {
         return this.var_2132;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2131;
      }
      
      public function get creationTime() : String
      {
         return this.var_2129;
      }
      
      public function get tags() : Array
      {
         return this.var_757;
      }
      
      public function get exists() : Boolean
      {
         return this.var_971;
      }
   }
}
