package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_309:int;
      
      private var var_2034:int;
      
      private var var_2357:Boolean;
      
      private var var_2173:int;
      
      private var _ownerName:String;
      
      private var var_103:RoomData;
      
      private var var_677:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_309 = param1.readInteger();
         this.var_2034 = param1.readInteger();
         this.var_2357 = param1.readBoolean();
         this.var_2173 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_103 = new RoomData(param1);
         this.var_677 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_103 != null)
         {
            this.var_103.dispose();
            this.var_103 = null;
         }
         if(this.var_677 != null)
         {
            this.var_677.dispose();
            this.var_677 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_309;
      }
      
      public function get userCount() : int
      {
         return this.var_2034;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2357;
      }
      
      public function get ownerId() : int
      {
         return this.var_2173;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_103;
      }
      
      public function get event() : RoomData
      {
         return this.var_677;
      }
   }
}
