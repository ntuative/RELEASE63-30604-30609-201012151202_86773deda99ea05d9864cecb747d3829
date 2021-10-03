package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomShortData implements IDisposable
   {
       
      
      private var var_2427:String;
      
      private var var_2050:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomShortData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2427 = param1.readString();
         this.var_2050 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2427;
      }
      
      public function get worldId() : int
      {
         return this.var_2050;
      }
   }
}
